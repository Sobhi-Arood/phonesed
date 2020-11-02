import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/domain/core/upload/i_upload_facade.dart';
import 'package:phonesed/domain/entities/post.dart';
// import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/auth/user_dtos.dart';
import 'package:phonesed/infrastructure/core/firestore_helpers.dart';
import 'package:phonesed/infrastructure/posts/post_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final FirebaseFirestore _firestore;
  final IUploadFacade _uploadFacade;

  PostRepository(this._firestore, this._uploadFacade);

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchAll() async* {
    final postDoc = _firestore.collection('Posts');
    yield* postDoc
        .orderBy('publishedDate', descending: true)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs
                  .map((doc) => PostDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      print(e.toString());
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchAllFavorites() async* {
    final posts = KtList<Post>.empty();
    final postDoc = _firestore.collection('Posts');

    final user = await _firestore.userDocument();
    final u = await user.get();
    final userData = u.data();
    final favorites = userData['favorites'] as List<dynamic>;
    print(favorites);
    yield* postDoc
        .where('id',
            isGreaterThan: '',
            arrayContains: ['247d4340-1c81-11eb-ad10-f3f8df30ef71'])
        // .orderBy('publishedDate', descending: true)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs
                  .map((doc) => PostDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
          print(e.toString());
          if (e is FirebaseException &&
              e.message.contains('permission-denied')) {
            return left(const PostFailure.insufficientPermission());
          } else {
            return left(const PostFailure.unexpected());
          }
        });

    // favorites.forEach((postId) async* {
    // final g = await postDoc.doc(postId.toString()).get();
    // final post = PostDto.fromFirestore(g).toDomain();
    // posts.plusElement(post);
    //   // return right(posts);
    // }).onErrorReturnWith((e) {
    //   if (e is FirebaseException && e.message.contains('permission-denied')) {
    //     return left(const PostFailure.insufficientPermission());
    //   } else {
    //     return left(const PostFailure.unexpected());
    //   }
    // });
  }

  @override
  Future<Either<PostFailure, Unit>> create(Post post) async {
    try {
      final user = await _firestore.userDocument();
      final newPost = _firestore.collection('Posts').doc(post.id.getOrCrash());

      await _firestore.runTransaction((transaction) async {
        return transaction
            .get(user)
            .then((userData) => UserDto.fromFirestore(userData))
            .then((u) async {
          final List<String> urls = [];
          final List<String> imgs = [];
          final p = post.images.getOrCrash();
          await Future.forEach(
              p.asList(), (String element) => imgs.add(element));

          final i = await _uploadFacade.uploadPostImages(imgs, user.id);

          i.fold((l) => null, (r) async {
            await Future.forEach(r, (String element) => urls.add(element));
          });
          final postDto = PostDto(
            id: post.id.getOrCrash(),
            userId: user.id,
            title: post.title.getOrCrash(),
            price: post.price.getOrCrash(),
            description: post.description.getOrCrash(),
            images: urls,
            city: post.city.getOrCrash(),
            area: post.area,
            country: post.country,
            moreAccessories: post.moreAccessories.getOrCrash(),
            avaliable: post.avaliable,
            exhangable: post.exhangable,
            negiotable: post.negiotable,
            headphones: post.headphones,
            charger: post.charger,
            brand: post.brand.getOrCrash(),
            device: post.device,
            age: post.age.getOrCrash(),
            condition: post.condition.getOrCrash(),
            publishedDate: DateTime.now(),
            userAvatar: u.avatar,
            userName: u.name,
          );

          transaction.set(newPost, postDto.toJson());

          final increment = FieldValue.increment(1);
          transaction.update(user, {'numberOfPublishedPosts': increment});
        });
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) {
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<PostFailure, Unit>> like(String postId) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.update({
        'favorites': FieldValue.arrayUnion([postId])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    } catch (_) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Future<Either<PostFailure, Unit>> unlike(String postId) async {
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.update({
        'favorites': FieldValue.arrayRemove([postId])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, KtList<Post>>> getAllFavorites() async {
    try {
      final posts = <Post>[];
      final postDoc = _firestore.collection('Posts');

      final user = await _firestore.userDocument();
      if (user == null) {
        return left(const PostFailure.unexpected());
      }
      final u = await user.get();
      final userData = u.data();
      final favorites = userData['favorites'] as List<dynamic>;

      await Future.forEach(favorites, (element) async {
        // print(element);
        final g = await postDoc.doc(element.toString()).get();
        // print(g);
        final post = PostDto.fromFirestore(g).toDomain();

        posts.add(post);
        // print(posts);
      });
      posts.map((s) => print(s.id));
      // print(posts);
      return right(posts.toImmutableList());
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    } catch (_) {
      return left(const PostFailure.unexpected());
    }
  }
}

// final List<String> urls = [];
// final List<String> imgs = [];
// final p = post.images.getOrCrash();
// await Future.forEach(p.asList(), (String element) => imgs.add(element));

// final i = await _uploadFacade.uploadPostImages(imgs, user.id);

// i.fold((l) => null, (r) async {
//   await Future.forEach(r, (String element) => urls.add(element));
// });

// final postDto = PostDto(
//     id: post.id.getOrCrash(),
//     userId: user.id,
//     title: post.title.getOrCrash(),
//     price: post.price.getOrCrash(),
//     description: post.description.getOrCrash(),
//     images: urls,
//     city: post.city.getOrCrash(),
//     area: post.area,
//     country: post.country,
//     moreAccessories: post.moreAccessories.getOrCrash(),
//     avaliable: post.avaliable,
//     exhangable: post.exhangable,
//     negiotable: post.negiotable,
//     headphones: post.headphones,
//     charger: post.charger,
//     brand: post.brand.getOrCrash(),
//     device: post.device,
//     age: post.age.getOrCrash(),
//     condition: post.condition.getOrCrash(),
//     publishedDate: DateTime.now());

// await _firestore
//     .collection('Posts')
//     .doc(postDto.id)
//     .set(postDto.toJson());

// final increment = FieldValue.increment(1);
// await user.update({'numberOfPublishedPosts': increment});

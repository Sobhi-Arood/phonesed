import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/core/upload/i_upload_facade.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/post_failure.dart';
import 'package:phonesed/infrastructure/auth/user_dtos.dart';
import 'package:phonesed/infrastructure/core/firestore_helpers.dart';
import 'package:phonesed/infrastructure/posts/post_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/services.dart' show rootBundle;

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
              snapshot.docs.map((doc) {
                return PostDto.fromFirestore(doc).toDomain();
              }).toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchAllFavorites(
      String id) async* {
    final posts = KtList<Post>.empty();
    final postDoc = _firestore.collection('Posts');

    final user = await _firestore.userDocument();

    // final arr = user.snapshots().map((event) => event.data()['favorites']);
    // arr.listen((event) {
    //   final o = postDoc
    //       .where('id', isEqualTo: event.toString())
    //       .snapshots()
    //       .map((event) => event.docs);
    //   o.listen((event) {
    //     print(event);
    //   });
    _firestore
        .collection('Users')
        .where('id', isEqualTo: user.id)
        .snapshots()
        .listen((event) {
      event.docs.forEach((element) {
        // print(element.data()['favorites']);
        final List<dynamic> m = element.data()['favorites'] as List<dynamic>;
        m.forEach((element) async* {
          yield* postDoc
              .where('id', isEqualTo: element.toString())
              .snapshots()
              .map(
                (snapshot) => right<PostFailure, KtList<Post>>(snapshot.docs
                    .map((doc) => PostDto.fromFirestore(doc).toDomain())
                    .toImmutableList()),
              )
              .onErrorReturnWith((e) {
            if (e is FirebaseException &&
                e.message.contains('permission-denied')) {
              return left(const PostFailure.insufficientPermission());
            } else {
              return left(const PostFailure.unexpected());
            }
          });
        });
      });
    });
    // print(o);
    // final a = postDoc.where('id', isEqualTo: event.toString()).snapshots()
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

          final i =
              await _uploadFacade.uploadPostImages(imgs, post.id.getOrCrash());

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
            area: post.area.getOrCrash(),
            country: post.country,
            moreAccessories: post.moreAccessories.getOrCrash(),
            avaliable: post.avaliable,
            exhangable: post.exhangable,
            negiotable: post.negiotable,
            headphones: post.headphones,
            charger: post.charger,
            brand: post.brand.getOrCrash(),
            device: post.device.getOrCrash(),
            age: post.age.getOrCrash(),
            condition: post.condition.getOrCrash(),
            publishedDate: DateTime.now(),
            userAvatar: u.avatar,
            userName: u.name,
            searchParams: setSearchParam(post.title.getOrCrash()),
            filterParams: [
              post.city.getOrCrash(),
              post.brand.getOrCrash(),
              post.exhangable,
              post.headphones
            ],
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

  List<String> setSearchParam(String caseTitle) {
    final List<String> caseSearchList = [];
    String temp = '';
    final List<String> arr = caseTitle.split(" ");
    final String firstWord = arr[0];
    for (int i = 0; i < firstWord.length; i++) {
      temp = temp + firstWord[i];
      caseSearchList.add(temp);
    }

    return caseSearchList;
  }

  @override
  Future<Either<PostFailure, Unit>> delete(Post post) async {
    try {
      final user = await _firestore.userDocument();
      final postId = post.id.getOrCrash();

      // await _uploadFacade.deleteImages(postId);
      await _firestore.runTransaction((transaction) {
        return transaction.get(user).then((_) async {
          await _uploadFacade.deleteImages(postId);
          transaction.delete(_firestore.collection('Posts').doc(postId));

          final increment = FieldValue.increment(-1);
          transaction.update(user, {'numberOfPublishedPosts': increment});
        });
      });
      // await _firestore.collection('Posts').doc(postId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      // print(e.message);
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else if (e is FirebaseException && e.message.contains('not-found')) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PostFailure, Unit>> update(Post post) async {
    try {
      final editedPost =
          _firestore.collection('Posts').doc(post.id.getOrCrash());

      bool listsEqual = false;

      await _firestore.runTransaction((transaction) async {
        return transaction
            .get(editedPost)
            .then((doc) => PostDto.fromFirestore(doc))
            .then((p) async {
          if (post.images
              .getOrCrash()
              .containsAll(p.images.toImmutableList())) {
            print('lists equal');
            // listsEqual = true;
            final newPostDto = PostDto(
              id: p.id,
              userId: p.userId,
              title: post.title.getOrCrash(),
              price: post.price.getOrCrash(),
              description: post.description.getOrCrash(),
              images: p.images,
              city: post.city.getOrCrash(),
              area: post.area.getOrCrash(),
              country: post.country,
              moreAccessories: post.moreAccessories.getOrCrash(),
              avaliable: post.avaliable,
              exhangable: post.exhangable,
              negiotable: post.negiotable,
              headphones: post.headphones,
              charger: post.charger,
              brand: post.brand.getOrCrash(),
              device: post.device.getOrCrash(),
              age: post.age.getOrCrash(),
              condition: post.condition.getOrCrash(),
              publishedDate: p.publishedDate,
              userAvatar: p.userAvatar,
              userName: p.userName,
              searchParams: setSearchParam(post.title.getOrCrash()),
              filterParams: [
                post.city.getOrCrash(),
                post.brand.getOrCrash(),
                post.exhangable,
                post.headphones
              ],
            );

            transaction.update(editedPost, newPostDto.toJson());
          } else {
            await _uploadFacade.deleteImages(p.id);
            print('list not equal');
            // listsEqual = false;
            final List<String> urls = [];
            final List<String> imgs = [];

            final postImages = post.images.getOrCrash();
            await Future.forEach(
                postImages.asList(), (element) => imgs.add(element.toString()));
            // print(imgs);
            final uploadOperation = await _uploadFacade.uploadPostImages(
                imgs, post.id.getOrCrash());

            uploadOperation.fold(
                (l) => left(const PostFailure.unableToUpdate()), (r) async {
              await Future.forEach(
                  r, (element) => urls.add(element.toString()));
            });
            // print(urls);
            transaction.update(editedPost, {
              'images': FieldValue.arrayRemove(urls),
            });

            final npd = p.copyWith(
              title: post.title.getOrCrash(),
              price: post.price.getOrCrash(),
              description: post.description.getOrCrash(),
              moreAccessories: post.moreAccessories.getOrCrash(),
              age: post.age.getOrCrash(),
              condition: post.condition.getOrCrash(),
              images: urls,
              exhangable: post.exhangable,
              negiotable: post.negiotable,
              headphones: post.headphones,
              charger: post.charger,
              searchParams: setSearchParam(post.title.getOrCrash()),
              filterParams: [
                post.city.getOrCrash(),
                post.brand.getOrCrash(),
                post.exhangable,
                post.headphones
              ],
            );

            // final newPostDto = PostDto(
            //   id: p.id,
            //   userId: p.userId,
            //   title: post.title.getOrCrash(),
            //   price: post.price.getOrCrash(),
            //   description: post.description.getOrCrash(),
            //   images: urls,
            //   city: post.city.getOrCrash(),
            //   area: post.area.getOrCrash(),
            //   country: post.country,
            //   moreAccessories: post.moreAccessories.getOrCrash(),
            //   avaliable: post.avaliable,
            // exhangable: post.exhangable,
            // negiotable: post.negiotable,
            // headphones: post.headphones,
            // charger: post.charger,
            //   brand: post.brand.getOrCrash(),
            //   device: post.device.getOrCrash(),
            //   age: post.age.getOrCrash(),
            //   condition: post.condition.getOrCrash(),
            //   publishedDate: p.publishedDate,
            //   userAvatar: p.userAvatar,
            //   userName: p.userName,
            //   searchParams: setSearchParam(post.title.getOrCrash()),
            //   filterParams: [
            //     post.city.getOrCrash(),
            //     post.brand.getOrCrash(),
            //     post.exhangable,
            //     post.headphones
            //   ],
            // );

            transaction.update(editedPost, npd.toJson());
          }
        });
      });
      // print('UPDATE UPDATE UPDATE ??!!::');
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else if (e is FirebaseException && e.message.contains('not-found')) {
        return left(const PostFailure.unableToUpdate());
      } else {
        return left(const PostFailure.unexpected());
      }
    } catch (e) {
      // print(e);
      return left(const PostFailure.unableToUpdate());
    }
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
        if (g.exists) {
          final post = PostDto.fromFirestore(g).toDomain();
          posts.add(post);
        }
        // print(posts);
      });

      // posts.map((s) => print(s.id));
      // print(posts);
      return right(posts.toImmutableList());
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }

  @override
  Stream<Either<PostFailure, KtList<String>>> fetchFavoritesIds() async* {
    final user = await _firestore.userDocument();

    yield* user
        .collection('favorites')
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<String>>(
              snapshot.docs
                  .map((e) => e.data()['is'].toString())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchMyPosts() async* {
    final userDoc = await _firestore.userDocument();
    final postDoc = _firestore.collection('Posts');

    if (userDoc.id.isEmpty) {
      yield left(const PostFailure.notLoggedIn());
    }

    yield* postDoc
        .where('userId', isEqualTo: userDoc.id)
        .orderBy('publishedDate', descending: true)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs
                  .map((doc) => PostDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      // print(e.toString());
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchSearchPosts(
      String query) async* {
    final postDoc = _firestore.collection('Posts');
    yield* postDoc
        .where('searchParams', arrayContains: query)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs.map((doc) =>
                  // print(doc.data());
                  PostDto.fromFirestore(doc).toDomain()).toImmutableList(),
            ))
        .onErrorReturnWith((error) {
      print(error.toString());
      return left(const PostFailure.unexpected());
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchFilteredPosts(String city,
      String brand, bool exchangable, bool headphones, int price) async* {
    var postDoc = _firestore.collection('Posts');
    var query = postDoc.where('price', isLessThanOrEqualTo: price);
    if (city.isNotEmpty) {
      query = query.where('city', isEqualTo: city);
    }
    if (brand.isNotEmpty) {
      query = query.where('brand', isEqualTo: brand);
    }
    query = query.where('filterParams',
        arrayContainsAny: [city, brand, exchangable, headphones]);
    // print([city, brand, exchangable, headphones]);
    yield* query
        // .orderBy('publishedDate', descending: true)
        // .where('city', isEqualTo: city)
        // .where('brand', isEqualTo: brand)
        // .where('exhangable', isEqualTo: exchangable)
        // .where('headphones', isEqualTo: headphones)
        // .where('city', arrayContainsAny: [city])
        // .where('brand', arrayContainsAny: [brand])
        // .where('filterParams',
        //     arrayContainsAny: [city, brand, exchangable, headphones])
        // .where('headphones', isLessThanOrEqualTo: headphones)
        // .where('price', isLessThanOrEqualTo: price)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs.map((doc) {
                // print(doc.data());
                return PostDto.fromFirestore(doc).toDomain();
              }).toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      print(e);
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PostFailure, KtList<Post>>> fetchRelatedPosts(
      String brand, String currentId) async* {
    final postDoc = _firestore.collection('Posts');
    yield* postDoc
        // .orderBy('publishedDate', descending: true)
        // .where('id', isNotEqualTo: currentId)
        // .where('id', isGreaterThan: currentId)
        .where('brand', isEqualTo: brand)
        .limit(4)
        .snapshots()
        .map((snapshot) => right<PostFailure, KtList<Post>>(
              snapshot.docs.map((doc) {
                return PostDto.fromFirestore(doc).toDomain();
              }).toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('permission-denied')) {
        return left(const PostFailure.insufficientPermission());
      } else {
        return left(const PostFailure.unexpected());
      }
    });
  }
}

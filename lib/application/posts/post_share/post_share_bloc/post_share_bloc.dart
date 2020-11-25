import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/domain/posts/i_post_repository.dart';
import 'package:phonesed/domain/posts/i_share_facade.dart';
import 'package:share/share.dart';

part 'post_share_event.dart';
part 'post_share_state.dart';
part 'post_share_bloc.freezed.dart';

@injectable
class PostShareBloc extends Bloc<PostShareEvent, PostShareState> {
  final IShareFacade _shareFacade;
  final IPostRepository _postRepository;
  PostShareBloc(this._shareFacade, this._postRepository)
      : super(const PostShareState.initial());

  @override
  Stream<PostShareState> mapEventToState(
    PostShareEvent event,
  ) async* {
    yield* event.map(
      shareLinkRecevied: (e) async* {
        yield const PostShareState.loadInProgress();
        final post = await _shareFacade.handleDynamicLinks();
        print('HAHAHAHAHAHA SHARE POST :: $post');
        add(PostShareEvent.postRecevied(post));
        // yield const PostShareState.receviedShareLink(
        //     '330ff980-2cc0-11eb-804e-cbb97efdb14f');
      },
      postRecevied: (e) async* {
        yield const PostShareState.loadInProgress();
        final post = await _postRepository.getPostById(e.postId);
        print('THIS THE POST FUCK YOU :: $post');
        yield post.fold((l) => const PostShareState.receviedError(),
            (r) => PostShareState.receviedShareLink(r));
      },
      sharePostClicked: (e) async* {
        yield const PostShareState.loadInProgress();
        final post = await _shareFacade.createSharePostLink(
            e.postId, e.title, e.description, e.imageUrl);
        // yield Share.share(post);
        yield post.fold((l) => const PostShareState.receviedError(), (r) {
          Share.share(r);
          return const PostShareState.initial();
        });
      },
    );
  }
}

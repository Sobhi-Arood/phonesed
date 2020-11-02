import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/favorite_post_card_widget.dart';

class FavortiePostsWatcherBody extends StatelessWidget {
  const FavortiePostsWatcherBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.posts.size,
                itemBuilder: (context, index) {
                  final post = state.posts[index];
                  if (post.failureOption.isSome()) {
                    return Container(color: Colors.red);
                  } else {
                    return FavoritePostCard(post: post);
                  }
                },
              );
            },
            loadFailure: (f) => Center(
                  child: Text(f.postFailure.map(
                      unexpected: (_) => '',
                      insufficientPermission: (_) => 'Error',
                      unableToUpdate: (_) => '')),
                ));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/post_card_widget.dart';

class PostWatcherBody extends StatelessWidget {
  const PostWatcherBody({Key key}) : super(key: key);
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
                    return PostCard(post: post);
                  }
                },
              );
            },
            loadFailure: (f) => Container(
                  child: Text(f.postFailure.toString()),
                ));
      },
    );
  }
}

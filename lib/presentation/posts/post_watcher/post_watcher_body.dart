import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/presentation/posts/post_search/widgets/post_search_textfield.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/post_card_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/post_filter_widget.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class PostWatcherBody extends StatelessWidget {
  const PostWatcherBody({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostWatcherBloc, PostWatcherState>(
      listener: (context, state) {
        state.map(
            initial: (_) => {},
            loadInProgress: (_) => {},
            loadSuccess: (s) => {
                  if (s.posts.isEmpty())
                    {
                      FlushbarHelper.createError(
                              message: 'No Results',
                              duration: const Duration(seconds: 5))
                          .show(context),
                      context
                          .bloc<PostWatcherBloc>()
                          .add(const PostWatcherEvent.watchAllStarted())
                    }
                },
            loadFailure: (_) => {});
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return SingleChildScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  PostFilterWidget(),
                  // const PostSearchTextField(),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.posts.size,
                    itemBuilder: (context, index) {
                      final post = state.posts[index];
                      if (post.failureOption.isSome()) {
                        return Container(
                          color: Colors.red,
                          child: Text(
                            post.failureOption.fold(
                              () => '',
                              (f) => f.toString(),
                            ),
                          ),
                        );
                      } else {
                        return PostCard(key: ValueKey(post.id), post: post);
                      }
                    },
                  ),
                ],
              ),
            );
          },
          loadFailure: (f) => const Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/profile/my_posts_watcher/widgets/my_posts_card_widget.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class MyPostsWatcherBody extends StatelessWidget {
  const MyPostsWatcherBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            if (state.posts.isEmpty()) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/posts.png',
                      scale: 2.5,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'No posts yet',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Add your first device to sell',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),
                    RaisedButton(
                      onPressed: () {
                        ExtendedNavigator.of(context)
                            .pushPostFormPage(editedPost: null);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                      highlightElevation: 0,
                      color: kPrimaryColor,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              );
            }
            return ListView.builder(
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
                        (a) => a.toString(),
                      ),
                    ),
                  );
                } else {
                  return MyPostsCardWidget(post: post);
                }
              },
            );
          },
          loadFailure: (_) => const Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}

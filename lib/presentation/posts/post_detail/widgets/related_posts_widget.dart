import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/related_post_card.dart';

import '../../../../constants.dart';

class RelatedPostsWidget extends HookWidget {
  final Post parentPost;
  const RelatedPostsWidget({Key key, @required this.parentPost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = useState(0.0);
    return BlocConsumer<PostWatcherBloc, PostWatcherState>(
      listener: (context, state) {
        height.value = state.map(
            initial: (_) => 0,
            loadInProgress: (_) => 0,
            loadSuccess: (s) {
              // print(s.posts);
              //  || s.posts[0].id.getOrCrash() == parentPost.id.getOrCrash()
              if (s.posts.isEmpty()) {
                return 0;
              } else {
                return 370;
              }
            },
            loadFailure: (_) => 0);
      },
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Container(
                  height: 0,
                ),
            loadSuccess: (state) => Container(
                  padding: const EdgeInsets.all(16),
                  height: state.posts.size > 1 ? 370 : 0,
                  // height: height.value,
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!state.posts.isEmpty()) ...[
                        // const Divider(),
                        const SizedBox(height: 12),
                        const Text(
                          'Related devices',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryDarkColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.posts.size,
                            itemBuilder: (context, index) {
                              final post = state.posts[index];
                              if (post.failureOption.isSome()) {
                                return Container();
                              } else if (post.id.getOrCrash() ==
                                  parentPost.id.getOrCrash()) {
                                return Container(
                                  height: 0,
                                );
                              } else {
                                return RelatedPostCard(post: post);
                              }
                            },
                          ),
                        ),
                      ] else ...[
                        Container()
                      ]
                    ],
                  ),
                ),
            loadFailure: (_) => Container());
      },
    );
  }
}

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/core/posts_sort/posts_form_sort/posts_form_sort_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/post_card_widget.dart';
import 'package:kt_dart/collection.dart';

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
                    }
                },
            loadFailure: (_) => {});
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: SpinKitFadingFour(
              color: kPrimaryColor,
            ),
          ),
          loadSuccess: (state) {
            KtList<Post> sortedList = state.posts;
            return SingleChildScrollView(
              // physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (state.posts.isEmpty()) ...[
                    Image.asset(
                      'assets/images/posts.png',
                      scale: 3,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'No results',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: RaisedButton(
                        elevation: 0,
                        color: kPrimaryColor,
                        onPressed: () => context
                            .read<PostWatcherBloc>()
                            .add(const PostWatcherEvent.watchAllStarted()),
                        child: const Text(
                          'Return',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ] else
                    BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
                      builder: (context, filterState) {
                        return BlocBuilder<PostsFormSortBloc,
                            PostsFormSortState>(
                          builder: (context, sortState) {
                            if (sortState.sortValue ==
                                kSortPriceChooses.first) {
                              sortedList =
                                  sortedList.sortedByDescending<DateTime>(
                                      (p) => p.publishedDate.getOrCrash());
                            } else if (sortState.sortValue ==
                                kSortPriceChooses[1]) {
                              sortedList = sortedList
                                  .sortedBy<int>((p) => -p.price.getOrCrash());
                            } else {
                              sortedList = sortedList
                                  .sortedBy<int>((p) => p.price.getOrCrash());
                            }

                            return ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: sortedList.size,
                              itemBuilder: (context, index) {
                                final post = sortedList.get(index);
                                if (index != 0 && index % 5 == 0) {
                                  return Column(
                                    children: [
                                      Container(
                                        child: AdmobBanner(
                                            adUnitId: getBannerAdUnitId(),
                                            adSize:
                                                AdmobBannerSize.MEDIUM_RECTANGLE
                                            //     AdmobBannerSize.ADAPTIVE_BANNER(
                                            //   width: MediaQuery.of(context)
                                            //           .size
                                            //           .width
                                            //           .toInt() -
                                            //       40,
                                            // ),
                                            ),
                                      ),
                                    ],
                                  );
                                }
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
                                  return PostCard(
                                      key: ValueKey(post.id), post: post);
                                }
                              },
                            );
                          },
                        );
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

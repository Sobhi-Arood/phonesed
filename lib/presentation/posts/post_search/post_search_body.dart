import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/posts/post_search/post_search_bloc.dart';
import 'package:phonesed/presentation/posts/post_search/widgets/post_search_textfield.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/favorite_post_card_widget.dart';

import '../../../constants.dart';

class PostSearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostSearchBloc, PostSearchState>(
      // listenWhen: (p, c) =>
      //     p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
      listener: (context, state) {
        // if (state.isLoading) {
        //   print('Not Loading');
        // } else if (!state.isLoading) {
        //   print('Loading');
        // }

        // if (state.isSubmitting) {
        //   print('submitting');
        // } else {
        //   print('sdfsdf');
        // }
        // state.saveFailureOrSuccessOption.fold(
        //     () => {},
        //     (either) =>
        //         either.fold((failure) => print(failure), (r) => print(r)));
      },
      builder: (context, state) {
        return Column(
          children: [
            const PostSearchTextField(),
            const SizedBox(
              height: 16,
            ),
            if (state.isLoading) ...[
              const SpinKitFadingFour(
                color: kPrimaryColor,
              ),
            ] else ...[
              state.saveFailureOrSuccessOption.fold(
                (f) => const Center(
                  child: Text('No Results'),
                ),
                (a) {
                  if (a.isEmpty()) {
                    return Column(
                      children: [
                        Image.asset(
                          'assets/images/search.png',
                          scale: 4,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'No results',
                          style: TextStyle(
                              color: Colors.grey[300],
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    );
                  }
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => FocusScope.of(context).unfocus(),
                      child: ListView.builder(
                        itemCount: a.size,
                        itemBuilder: (context, index) {
                          final post = a[index];
                          if (post.failureOption.isSome()) {
                            return const Text('Error');
                          } else {
                            return FavoritePostCard(post: post);
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ]

            // state.saveFailureOrSuccessOption.fold(
            //   () => Container(
            //     child: Text('noooo'),
            //   ),
            //   (a) => a.fold(
            //     (fail) => Center(
            //       child: Text(fail.map(
            //           unexpected: (_) => 'Error',
            //           insufficientPermission: (_) => 'Error',
            //           unableToUpdate: (_) => 'Error',
            //           notLoggedIn: (_) => 'Error')),
            //     ),
            //     (list) => Expanded(
            //       child: ListView.builder(
            //         itemCount: list.size,
            //         itemBuilder: (context, index) {
            //           final post = list[index];
            //           return Text(
            //             post.title.getOrCrash(),
            //             style: TextStyle(
            //                 color: kPrimaryDarkColor,
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.w700),
            //           );
            //         },
            //       ),
            //     ),
            //   ),
            // )
          ],
        );
      },
    );
  }
}

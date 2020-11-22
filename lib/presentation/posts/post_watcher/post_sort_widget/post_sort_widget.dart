import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/posts_sort/posts_form_sort/posts_form_sort_bloc.dart';
import 'package:phonesed/application/core/posts_sort/posts_sort_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_sort_widget/widgets/price_sort_dropdown.dart';

import '../../../../constants.dart';

class PostsSortWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final sortValue = useState(kSortPriceChooses[0]);
    return BlocBuilder<PostsSortBloc, PostsSortState>(
      builder: (context, state) {
        return state.map(widgetClose: (_) {
          return Container();
        }, widgetOpen: (_) {
          return Container(
            padding: const EdgeInsets.all(18),
            color: Colors.white,
            child: BlocConsumer<PostsFormSortBloc, PostsFormSortState>(
              listener: (context, state) => sortValue.value = state.sortValue,
              builder: (context, state) {
                return Form(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // const PriceSortDropdown(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sort price',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: kSecondaryLightColor,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: kPrimaryLightColor),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DropdownButton<String>(
                                    // value: state.sortValue,
                                    value: sortValue.value,
                                    elevation: 0,
                                    isExpanded: true,
                                    style: const TextStyle(
                                      color: kPrimaryDarkColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                    onChanged: (v) {
                                      sortValue.value = v;
                                    },
                                    items: kSortPriceChooses
                                        .map<DropdownMenuItem<String>>((e) {
                                      return DropdownMenuItem<String>(
                                          value: e, child: Text(e));
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            elevation: 0,
                            color: kPrimaryColor,
                            onPressed: () {
                              context.read<PostsFormSortBloc>().add(
                                  PostsFormSortEvent.sortValueChanged(
                                      sortValue.value));
                              context
                                  .read<PostsSortBloc>()
                                  .add(const PostsSortEvent.closed());

                              // context.read<PostsFormSortBloc>().add(PostsFormSort)
                              // context.bloc<PostWatcherBloc>().add(
                              //       PostWatcherEvent
                              //           .watchFilteredPostsStarted(
                              //               state.city,
                              //               state.brand,
                              //               state.exchangable,
                              //               state.headphones,
                              //               state.maxPrice),
                              //     );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
      },
    );
  }
}

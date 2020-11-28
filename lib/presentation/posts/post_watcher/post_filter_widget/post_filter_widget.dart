import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_filter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/brand_dropdown.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/city_list_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/price_list_widget.dart';

class PostFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFilterBloc, PostsFilterState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            widgetOpen: (_) {
              return Material(
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(18),
                  color: Colors.white,
                  child: BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
                    builder: (context, state) {
                      return Form(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const FilterCityDropdown(),
                              const CityFilterListField(),
                              const SizedBox(
                                height: 24,
                              ),
                              const FilterBrandDropdown(),
                              // const SizedBox(
                              //   height: 24,
                              // ),
                              // Wrap(
                              //   spacing: 30,
                              //   children: const [
                              //     FilterExchangableCheckbox(),
                              //     FilterHeadphonesCheckbox(),
                              //   ],
                              // ),
                              const SizedBox(
                                height: 24,
                              ),
                              // PriceSlider(),
                              const PriceFilterListField(),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      // side: const BorderSide(
                                      //   width: 3,
                                      //   color: kPrimaryColor,
                                      // ),
                                    ),
                                    color: kPrimaryLightColor,
                                    elevation: 0,
                                    onPressed: () {
                                      context.read<PostsFormFilterBloc>().add(
                                          const PostsFormFilterEvent.reseted());
                                      context
                                          .read<PostsFilterBloc>()
                                          .add(const PostsFilterEvent.closed());
                                      context.read<PostWatcherBloc>().add(
                                            const PostWatcherEvent
                                                .watchAllStarted(),
                                          );
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        'Reset',
                                        style: TextStyle(
                                            color: kPrimaryDarkColor,
                                            fontSize: 17),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      elevation: 0,
                                      color: kPrimaryColor,
                                      onPressed: () {
                                        // ExtendedNavigator.of(context)
                                        //     .pushFilterPostsWatchPage(
                                        //         filterBrand: state.brand,
                                        //         filterCity: state.city,
                                        //         filterExchangable:
                                        //             state.exchangable,
                                        //         filterHeadphones:
                                        //             state.headphones,
                                        //         filterPrice: state.price);
                                        context.read<PostsFilterBloc>().add(
                                            const PostsFilterEvent.closed());
                                        context.read<PostWatcherBloc>().add(
                                              PostWatcherEvent
                                                  .watchFilteredPostsStarted(
                                                state.city,
                                                state.brand,
                                                state.exchangable,
                                                state.headphones,
                                                state.price,
                                              ),
                                            );
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(14.0),
                                        child: Text(
                                          'Filter',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            widgetClose: (_) => Container());
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_filter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/brand_dropdown.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/city_dropdown.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/exchangable_checkbox.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/widgets/price_slider.dart';

import 'widgets/headphones_checkbox.dart';

class PostFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFilterBloc, PostsFilterState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(18),
          color: Colors.white,
          height: state.map(
              initial: (_) => 0,
              widgetOpen: (_) => MediaQuery.of(context).size.height * 0.6,
              widgetClose: (_) => 0),
          child: BlocConsumer<PostsFormFilterBloc, PostsFormFilterState>(
            listener: (context, state) {
              // print(state);
            },
            builder: (context, state) {
              return Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const FilterCityDropdown(),
                    // const SizedBox(
                    //   height: 24,
                    // ),
                    const FilterBrandDropdown(),
                    // const SizedBox(
                    //   height: 24,
                    // ),
                    Wrap(
                      children: const [
                        FilterExchangableCheckbox(),
                        FilterHeadphonesCheckbox(),
                      ],
                    ),
                    PriceSlider(),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        elevation: 0,
                        color: kPrimaryColor,
                        onPressed: () {
                          context
                              .bloc<PostsFilterBloc>()
                              .add(const PostsFilterEvent.closed());
                          context.bloc<PostWatcherBloc>().add(
                                PostWatcherEvent.watchFilteredPostsStarted(
                                    state.city,
                                    state.brand,
                                    state.exchangable,
                                    state.headphones,
                                    state.maxPrice),
                              );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Filter',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ))
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

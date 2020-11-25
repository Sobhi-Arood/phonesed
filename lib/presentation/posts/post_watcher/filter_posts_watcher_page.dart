import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/posts/post_watcher/filter_posts_watch_body.dart';

import '../../../constants.dart';

class FilterPostsWatchPage extends StatelessWidget {
  final String filterCity;
  final String filterBrand;
  final bool filterExchangable;
  final bool filterHeadphones;
  final String filterPrice;
  const FilterPostsWatchPage({
    @required this.filterCity,
    @required this.filterBrand,
    @required this.filterExchangable,
    @required this.filterHeadphones,
    @required this.filterPrice,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(const PostWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<PostsFormFilterBloc>(
            create: (context) => getIt<PostsFormFilterBloc>()),
        BlocProvider<UserProfileBloc>(
            create: (context) => getIt<UserProfileBloc>()
              ..add(const UserProfileEvent.initialized())),
      ],
      // child: Scaffold(
      //   appBar: AppBar(
      //     title: Text(''),
      //   ),
      //   body: FilterPostsWatchBody(),
      // ),
      child: BlocBuilder<PostWatcherBloc, PostWatcherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Hello'),
            ),
            body: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                  child: SpinKitFadingFour(
                color: kPrimaryColor,
              )),
              loadSuccess: (state) {
                return FilterPostsWatchBody(
                  posts: state.posts,
                  filterBrand: filterBrand,
                  filterCity: filterCity,
                  filterExchangable: filterExchangable,
                  filterHeadphones: filterHeadphones,
                  filterPrice: filterPrice,
                );
              },
              loadFailure: (_) => const Center(
                child: Text('Error'),
              ),
            ),
          );
        },
      ),
    );
  }
}

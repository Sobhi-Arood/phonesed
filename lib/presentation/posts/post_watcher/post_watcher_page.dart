import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_filter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/application/core/posts_sort/posts_form_sort/posts_form_sort_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_brands/post_form_brands_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_filter_widget/post_filter_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_sort_widget/post_sort_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_watcher_body.dart';

import '../../../injection.dart';

class PostWatcherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
            create: (context) => getIt<PostWatcherBloc>()
              ..add(const PostWatcherEvent.watchAllStarted())),
        BlocProvider<PostActorBloc>(
          create: (context) => getIt<PostActorBloc>(),
        ),
        BlocProvider<PostFormBrandsBloc>(
          create: (context) => getIt<PostFormBrandsBloc>()
            ..add(
              const PostFormBrandsEvent.getBrandsStarted(),
            ),
        ),
        BlocProvider<PostFormCitiesBloc>(
          create: (context) => getIt<PostFormCitiesBloc>()
            ..add(
              const PostFormCitiesEvent.getCitiesStarted(),
            ),
        ),
        BlocProvider<PostsFormFilterBloc>(
            create: (context) => getIt<PostsFormFilterBloc>()),
        BlocProvider<PostsFormSortBloc>(
            create: (context) => getIt<PostsFormSortBloc>()),
      ],
      // child: MultiBlocListener(
      //   listeners: [
      //     BlocListener<AuthBloc, AuthState>(listener: (context, state) {
      //       state.maybeMap(unauthenticated: (_) => {}, orElse: () => {});
      //     }),
      //   ],
      child: Stack(children: [
        const PostWatcherBody(),
        PostFilterWidget(),
        PostsSortWidget()
      ]),
    );
    // );
  }
}

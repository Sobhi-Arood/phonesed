import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/posts/post_watcher/favorite_posts_watcher_body.dart';

class FavoritePostsWatcherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(const PostWatcherEvent.watchAllFavoritesStarted()),
        ),
        BlocProvider<PostActorBloc>(
          create: (context) => getIt<PostActorBloc>(),
        ),
      ],
      child: const FavortiePostsWatcherBody(),
    );
  }
}

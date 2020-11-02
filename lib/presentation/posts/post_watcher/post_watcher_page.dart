import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
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
      ],
      // child: MultiBlocListener(
      //   listeners: [
      //     BlocListener<AuthBloc, AuthState>(listener: (context, state) {
      //       state.maybeMap(unauthenticated: (_) => {}, orElse: () => {});
      //     }),
      //   ],
      child: const PostWatcherBody(),
    );
    // );
  }
}

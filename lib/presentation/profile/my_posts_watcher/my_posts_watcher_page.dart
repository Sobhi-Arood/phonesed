import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/profile/my_posts_watcher/my_posts_watcher_body.dart';

import '../../../injection.dart';

class MyPostsWatcherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(
              const PostWatcherEvent.watchMyPostsStarted(),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Posts',
            style: TextStyle(color: kPrimaryDarkColor),
          ),
        ),
        body: const MyPostsWatcherBody(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
import 'package:phonesed/presentation/posts/post_detail/post_detail_body.dart';

import '../../../injection.dart';

class PostDetailPage extends StatelessWidget {
  final Post post;
  const PostDetailPage({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print(post.title);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
          BlocProvider(
            create: (context) => getIt<PostActorBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserProfileBloc>()
              ..add(const UserProfileEvent.initialized()),
          ),
          BlocProvider(
            create: (context) => getIt<PostWatcherBloc>()
              ..add(PostWatcherEvent.watchRelatedStarted(
                  post.brand.getOrCrash(), post.id.getOrCrash())),
          ),
        ],
        child: BlocBuilder<PostActorBloc, PostActorState>(
          builder: (context, state) {
            return Stack(
              children: [
                PostDetailBody(post: post),
                SavingInProgressOverlay(
                    isSaving: state.maybeWhen(
                        actionInProgress: () => true, orElse: () => false)),
              ],
            );
          },
        ));
  }
}

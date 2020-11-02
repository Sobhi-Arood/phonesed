import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/user_profile/avatar_user/avatar_user_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/profile/widgets/btns_list.dart';
import 'package:strings/strings.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'widgets/circular_avatar.dart';

class ProfilePage extends StatelessWidget {
  // final User user;
  const ProfilePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserProfileBloc>(
            create: (context) => getIt<UserProfileBloc>()
              ..add(const UserProfileEvent.initialized())),
        BlocProvider<AvatarUserBloc>(
            create: (context) => getIt<AvatarUserBloc>()),
      ],
      child: BlocBuilder<UserProfileBloc, UserProfileState>(
          // buildWhen: (p, c) => ,
          builder: (context, state) {
        return Stack(
          children: [
            const UserProfilePageContent(),
          ],
        );
      }),
    );
  }
}

class UserProfilePageContent extends StatelessWidget {
  const UserProfilePageContent({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => ListView(
                  children: [
                    const SizedBox(height: 32),
                    const CircularUserAvatar(),
                    const SizedBox(height: 16),
                    Text(
                      capitalize(state.user.name.getOrCrash()),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Joined ${timeago.format(state.user.joinDate)}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    ButtonsList(
                      numberOfPosts: state.user.numOfPublishedPosts,
                    ),
                  ],
                ),
            loadFailure: (e) => Text("Error:: // $e"));
      },
    );
  }
}

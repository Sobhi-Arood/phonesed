import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/user_profile/avatar_user/avatar_user_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
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
      child: BlocBuilder<AvatarUserBloc, AvatarUserState>(
          // buildWhen: (p, c) => ,
          builder: (context, state) {
        return Stack(
          children: [
            const UserProfilePageContent(),
            SavingInProgressOverlay(
              isSaving: state.maybeMap(
                  actionInProgress: (_) => true, orElse: () => false),
              title: 'loading',
            )
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
          loadInProgress: (_) => const SavingInProgressOverlay(
            isSaving: true,
            title: 'loading',
          ),
          loadSuccess: (state) => ListView(
            children: [
              const SizedBox(height: 32),
              const CircularUserAvatar(),
              const SizedBox(height: 16),
              Text(
                capitalize(state.user.name.getOrCrash()),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
                // style:
                //     const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 16),
              Text(
                'Joined ${timeago.format(state.user.joinDate)}',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ButtonsList(
                user: state.user,
              ),
            ],
          ),
          loadFailure: (e) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Some Error occured"),
              const SizedBox(
                height: 12,
              ),
              ListTile(
                title: const Text(
                  'Sign out',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                onTap: () =>
                    context.read<AuthBloc>().add(const AuthEvent.signedOut()),
              ),
            ],
          ),
        );
      },
    );
  }
}

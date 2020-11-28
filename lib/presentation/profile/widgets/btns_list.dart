import 'package:admob_flutter/admob_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class ButtonsList extends StatelessWidget {
  // final int numberOfPosts;
  final User user;
  const ButtonsList({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                child: AdmobBanner(
                    adUnitId: getBannerAdUnitId(),
                    adSize: AdmobBannerSize.BANNER),
              ),
            ],
          ),
          const Divider(),
          ListTile(
            // enabled: numberOfPosts != 0,
            title: Text(
              'Posts',
              style: Theme.of(context).textTheme.headline6,
              // style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => ExtendedNavigator.of(context).pushMyPostsWatcherPage(),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Profile Information',
              style: Theme.of(context).textTheme.headline6,
              // style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => ExtendedNavigator.of(context)
                .pushProfileDetailsPage(user: user),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'About',
              style: Theme.of(context).textTheme.headline6,
              // style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => showAboutDialog(
              context: context,
              applicationVersion: '1.0.0',
              applicationIcon: Image.asset(
                'assets/images/app_icon/icon_02.png',
                width: 35,
                height: 35,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Sign out',
              style: Theme.of(context).textTheme.headline6,
              // style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onTap: () =>
                context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
          // const Divider(),
        ],
      ),
    );
  }
}

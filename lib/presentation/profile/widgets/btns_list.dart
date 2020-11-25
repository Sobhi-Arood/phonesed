import 'package:admob_flutter/admob_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class ButtonsList extends StatelessWidget {
  final int numberOfPosts;
  const ButtonsList({Key key, @required this.numberOfPosts}) : super(key: key);
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
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => ExtendedNavigator.of(context).pushMyPostsWatcherPage(),
          ),
          // const Divider(),
          // ListTile(
          //   title: const Text(
          //     'Profile',
          //     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          //   ),
          //   trailing: const Icon(Icons.chevron_right),
          //   onTap: () {},
          // ),
          const Divider(),
          ListTile(
            title: const Text(
              'More information',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () =>
                showAboutDialog(context: context, applicationVersion: '1.0.0'),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Sign out',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
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

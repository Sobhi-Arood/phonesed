import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';

class ButtonsList extends StatelessWidget {
  final int numberOfPosts;
  const ButtonsList({Key key, @required this.numberOfPosts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Divider(),
          ListTile(
            enabled: numberOfPosts != 0,
            title: Text(
              '$numberOfPosts  Posts',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Support',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Sign out',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onTap: () =>
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
        ],
      ),
    );
  }
}

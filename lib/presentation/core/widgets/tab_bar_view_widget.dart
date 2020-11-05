import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/chats/conversations_page/conversations_page.dart';
import 'package:phonesed/presentation/posts/post_watcher/favorite_posts_watcher_page.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_watcher_page.dart';
import 'package:phonesed/presentation/profile/profile_page.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class TabBarViewWidget extends HookWidget {
  const TabBarViewWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _tabBarController = useTabController(initialLength: 4);
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        _tabBarController.index = state.currentIndex;
        return TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabBarController,
          children: [
            PostWatcherPage(),
            FavoritePostsWatcherPage(),
            ConversationsPage(),
            // const ProfilePage(),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const CircularProgressIndicator(),
                  authenticated: (_) => const ProfilePage(),
                  unauthenticated: (_) => Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(children: [
                      Text(
                        'Phonesed',
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontSize: 58,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "You're not logged in, Create an account to start publish your devices or exchange devices",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      RaisedButton(
                        onPressed: () =>
                            ExtendedNavigator.of(context).pushWelcomePage(),
                        child: const Text('Sign in'),
                      ),
                    ]),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

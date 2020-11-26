import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/chats/conversations_page/conversations_page.dart';
import 'package:phonesed/presentation/posts/post_search/post_search_page.dart';
import 'package:phonesed/presentation/posts/post_watcher/favorite_posts_watcher_page.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_watcher_page.dart';
import 'package:phonesed/presentation/profile/not_sign_in_page/not_sign_in_widget.dart';
import 'package:phonesed/presentation/profile/profile_page.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class TabBarViewWidget extends HookWidget {
  const TabBarViewWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _tabBarController = useTabController(initialLength: 5);
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        _tabBarController.index = state.currentIndex;
        return TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabBarController,
          children: [
            PostWatcherPage(),
            PostSearchPage(),
            FavoritePostsWatcherPage(),
            const ConversationsPage(),
            // const ProfilePage(),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const SpinKitFadingFour(
                    color: kPrimaryColor,
                  ),
                  authenticated: (_) => const ProfilePage(),
                  unauthenticated: (_) => const NotSignedInWidget(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:phonesed/presentation/core/widgets/tab_bar_view_widget.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<BottomNavigationBloc>(
            create: (context) => getIt<BottomNavigationBloc>(),
          ),
          BlocProvider<AuthBloc>(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          ),
          BlocProvider<UserProfileBloc>(
              create: (context) => getIt<UserProfileBloc>()
                ..add(const UserProfileEvent.initialized())),
        ],
        child: MultiBlocListener(
            listeners: [
              BlocListener<BottomNavigationBloc, BottomNavigationState>(
                  listener: (context, state) {})
            ],
            child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
              builder: (context, state) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      state.map(index: (i) {
                        if (i.currentIndex == 0) {
                          return 'Home';
                        } else if (i.currentIndex == 1) {
                          return 'Favorite';
                        } else if (i.currentIndex == 2) {
                          return 'Chat';
                        } else {
                          return 'Profile';
                        }
                      }),
                      style: const TextStyle(color: kPrimaryDarkColor),
                    ),
                    leading: BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (_) => Container(),
                          authenticated: (_) => IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: kPrimaryDarkColor,
                            ),
                            onPressed: () {
                              ExtendedNavigator.of(context)
                                  .pushPostFormPage(editedPost: null);
                              // ExtendedNavigator.of(context).pushWelcomePage();
                            },
                            iconSize: 34,
                          ),
                          unauthenticated: (_) => IconButton(
                            icon: const Icon(
                              Icons.login,
                              color: kPrimaryDarkColor,
                            ),
                            onPressed: () {
                              ExtendedNavigator.of(context).pushWelcomePage();
                            },
                            iconSize: 34,
                          ),
                        );
                      },
                    ),
                    actions: [
                      IconButton(
                          icon: const Icon(Icons.filter_list, size: 28),
                          onPressed: () {}),
                    ],
                  ),
                  body: const TabBarViewWidget(),
                  bottomNavigationBar: BottomNavigationBarWidget(),
                );
              },
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/constants.dart';

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
            Container(
              color: kPrimaryLightColor,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        );
      },
    );
  }
}

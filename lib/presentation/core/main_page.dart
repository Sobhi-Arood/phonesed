import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/widgets/bottom_navigation_bar_widget.dart';
import 'package:phonesed/presentation/core/widgets/tab_bar_view_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavigationBloc>(
      create: (context) => getIt<BottomNavigationBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: kPrimaryDarkColor),
          ),
          leading: IconButton(
            icon: const Icon(Icons.filter_list, size: 28),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
              iconSize: 34,
            ),
          ],
        ),
        body: const TabBarViewWidget(),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}

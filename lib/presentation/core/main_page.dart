import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          );
        },
      ),
    );
  }
}

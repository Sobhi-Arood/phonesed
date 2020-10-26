import 'package:auto_route/auto_route.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/routes/router.gr.dart' as app_router;
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phonesed',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        // scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.5,
          iconTheme: IconThemeData(
            color: kPrimaryDarkColor,
          ),
          actionsIconTheme: IconThemeData(
            color: kPrimaryDarkColor,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: kSecondaryLightColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
        ),
      ),
      builder: ExtendedNavigator.builder(
        router: app_router.Router(),
      ),
    );
  }
}

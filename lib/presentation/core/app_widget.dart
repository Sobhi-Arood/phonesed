import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';
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
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: TextTheme(
            headline2: GoogleFonts.lato(
              color: kPrimaryDarkColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(
            color: kPrimaryDarkColor,
          ),
          actionsIconTheme: IconThemeData(
            color: kPrimaryDarkColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: GoogleFonts.lato(
            color: kSecondaryLightColor,
            fontWeight: FontWeight.w600,
          ),
          // hintStyle: TextStyle(
          //   color: kSecondaryLightColor,
          //   fontWeight: FontWeight.w600,
          // ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.lato(
            color: kPrimaryDarkColor,
            fontSize: 48,
            fontWeight: FontWeight.w900,
          ),
          headline4: GoogleFonts.lato(
            color: kPrimaryDarkColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          // price
          headline5: GoogleFonts.lato(
            color: kPrimaryColor,
            fontSize: 19,
            fontWeight: FontWeight.w900,
          ),
          headline6: GoogleFonts.lato(
            color: kPrimaryDarkColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          subtitle1: GoogleFonts.lato(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
          // location, information
          caption: GoogleFonts.lato(
            color: kPrimaryDarkColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: GoogleFonts.lato(
            color: Colors.grey[800],
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          button: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
      ),
      builder: ExtendedNavigator.builder(
        router: app_router.Router(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../../constants.dart';

class NotSignedInWidget extends StatelessWidget {
  const NotSignedInWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Phonesed',
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              color: kPrimaryColor,
              fontSize: 58,
            ),
            // style: TextStyle(
            //   color: Colors.blue[400],
            //   fontSize: 58,
            // ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "You're not logged in, Login or Create an account to start publish your devices for sell or exchange.",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.grey[500],
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            // style: TextStyle(
            // color: Colors.grey,
            // fontSize: 20,
            // fontWeight: FontWeight.w200,
            // ),
          ),
          const SizedBox(
            height: 60,
          ),
          RaisedButton(
            onPressed: () => ExtendedNavigator.of(context).pushWelcomePage(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
            highlightElevation: 0,
            color: kPrimaryColor,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 1.0),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

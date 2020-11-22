import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../constants.dart';

class EmailVerificationSentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/Group10.png',
                  scale: 2,
                ),
                // Icon(
                //   Icons.email,
                //   size: 80,
                //   color: Colors.green[400],
                // ),
                const SizedBox(height: 12),
                const Text(
                  'Email Confirmation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  // 'Please check your inbox, then sign in',
                  'We sent you a confirmation email. Please check your email and click on the confirmation link, After confirmation sign in with your email and password.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    ExtendedNavigator.of(context).pushSignInPage();
                  },
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
                        'Sign in',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend email',
                    style: TextStyle(color: kPrimaryColor, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

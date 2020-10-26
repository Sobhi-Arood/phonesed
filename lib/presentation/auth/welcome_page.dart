import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
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
              const Text(
                'Welcome to Phonesed',
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
                'Create an account to start publish your devices or exchange devices',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textColor: Colors.grey,
                elevation: 0,
                highlightElevation: 0,
                color: kPrimaryLightColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    children: const [
                      Icon(Icons.smoke_free),
                      SizedBox(width: 20),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textColor: Colors.grey,
                elevation: 0,
                highlightElevation: 0,
                color: kPrimaryLightColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: const [
                      Icon(Icons.sms),
                      SizedBox(width: 20),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    width: 4,
                    color: kPrimaryLightColor,
                  ),
                ),
                highlightElevation: 0,
                textColor: Colors.grey,
                elevation: 0,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: const [
                      Icon(Icons.email),
                      SizedBox(width: 20),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Sign in with email',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

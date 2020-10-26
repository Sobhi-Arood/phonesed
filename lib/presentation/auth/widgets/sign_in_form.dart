import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Login',
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontSize: 58,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(
                    color: kSecondaryLightColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    // style: const TextStyle(
                    //   fontSize: 17,
                    //   fontWeight: FontWeight.w600,
                    // ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: kSecondaryLightColor,
                      ),
                      hintText: 'Enter your email ...',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    color: kSecondaryLightColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: kSecondaryLightColor,
                      ),
                      hintText: 'Enter your password ...',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            RaisedButton(
              onPressed: () {},
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
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New user ?'),
                  const SizedBox(width: 10),
                  const InkWell(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

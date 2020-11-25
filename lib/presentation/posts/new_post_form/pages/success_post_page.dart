import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class SuccessPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(''),
          elevation: 0,
          leading: Container(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/success.png',
                  scale: 2.5,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Submit successfully..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                FlatButton(
                    onPressed: () => ExtendedNavigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.mainPage),
                    child: const Text('Back to main page'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

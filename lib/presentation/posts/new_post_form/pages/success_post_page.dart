import 'package:flutter/material.dart';

class SuccessPostPage extends StatelessWidget {
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
                  onPressed: () {}, child: const Text('Back to main page'))
            ],
          ),
        ),
      ),
    );
  }
}

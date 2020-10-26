import 'package:flutter/material.dart';
import 'package:phonesed/presentation/auth/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: SignInForm(),
    );
  }
}

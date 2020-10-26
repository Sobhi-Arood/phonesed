import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/auth/widgets/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}

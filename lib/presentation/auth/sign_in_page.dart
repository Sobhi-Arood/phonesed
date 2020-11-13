import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/auth/widgets/sign_in_form.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: BlocBuilder<SignInFormBloc, SignInFormState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SignInForm(),
                  SavingInProgressOverlay(isSaving: state.isSubmitting),
                ],
              );
            },
          )),
    );
  }
}

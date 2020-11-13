import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/auth/widgets/sign_up_form.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<AuthBloc>()),
          BlocProvider(create: (context) => getIt<SignUpFormBloc>()),
        ],
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
            ),
            body: BlocBuilder<SignUpFormBloc, SignUpFormState>(
              builder: (context, state) {
                return Stack(
                  children: [
                    SignUpForm(),
                    SavingInProgressOverlay(isSaving: state.isSubmitting),
                  ],
                );
              },
            )));
  }
}

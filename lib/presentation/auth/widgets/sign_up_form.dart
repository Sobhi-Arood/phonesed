import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../../constants.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        // first fold for option
        state.authFailureOrSuccess.fold(
            () => {},
            // second fold for sign up (first)fail or (second)success
            (either) => either.fold(
                    (failure) => {
                          FlushbarHelper.createError(
                            message: failure.map(
                                canelledByUser: (_) => 'Cancelled',
                                serverError: (_) => 'Server error',
                                emailAlreadyInUse: (_) =>
                                    'Email already in use',
                                invalidEmailAndPasswordCombination: (_) =>
                                    'Invalid email and password',
                                weakPassword: (_) => 'Weak password'),
                          ).show(context),
                        }, (_) {
                  ExtendedNavigator.of(context).replace(Routes.mainPage);
                  context
                      .bloc<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'New account',
                  style: TextStyle(
                    color: kPrimaryDarkColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
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
                        autocorrect: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: kSecondaryLightColor,
                          ),
                          hintText: 'Enter your name ...',
                        ),
                        onChanged: (value) => context
                            .bloc<SignUpFormBloc>()
                            .add(SignUpFormEvent.nameChanged(value)),
                      ),
                    ),
                  ],
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
                  onPressed: () {
                    context.bloc<SignUpFormBloc>().add(
                        const SignUpFormEvent.registerWithEmailAndPassword());
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
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account ?'),
                      const SizedBox(width: 10),
                      const InkWell(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const InkWell(child: Text('Privacy Policy')),
                      const SizedBox(width: 20),
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 10,
                      ),
                      const SizedBox(width: 20),
                      const InkWell(
                        child: Text('Terms & Conditions', style: TextStyle()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

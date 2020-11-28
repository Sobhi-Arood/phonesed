import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccess.fold(
          () => {},
          (either) => either.fold(
                  (failure) => {
                        FlushbarHelper.createError(
                          message: failure.map(
                              canelledByUser: (_) => 'Cancelled',
                              serverError: (_) => 'Server error',
                              emailAlreadyInUse: (_) => 'Email already in use',
                              invalidEmailAndPasswordCombination: (_) =>
                                  'Invalid email and password',
                              weakPassword: (_) => 'Weak password',
                              emailNotVerified: (_) =>
                                  'Please verify your email address'),
                        ).show(context),
                      }, (_) {
                ExtendedNavigator.of(context).replace(Routes.mainPage);
              }));
    }, builder: (context, state) {
      return Form(
        autovalidate: state.showErrorMessages,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Text(
              //   'Login',
              //   style: Theme.of(context).textTheme.headline1,
              //   // style: TextStyle(
              //   //   color: kPrimaryDarkColor,
              //   //   fontSize: 58,
              //   //   fontWeight: FontWeight.bold,
              //   // ),
              // ),
              // const SizedBox(height: 30),
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
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                empty: (_) => 'Cannot be empty',
                                invalidEmail: (_) => 'Invalid Email',
                                orElse: () => null),
                            (_) => null,
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
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<SignInFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (f) => f.maybeMap(
                                empty: (_) => 'Cannot be empty',
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null),
                            (_) => null,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              RaisedButton(
                onPressed: () {
                  context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithEmailAndPassword());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                highlightElevation: 0,
                color: kPrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Sign in',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(fontSize: 21),
                      // style: TextStyle(
                      //   fontSize: 21,
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 70),
              // Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'New user ?',
              //         style: Theme.of(context).textTheme.caption,
              //       ),
              //       const SizedBox(width: 10),
              //       InkWell(
              //         onTap: () {
              //           ExtendedNavigator.of(context).pushSignUpPage();
              //         },
              //         child: Text(
              //           'Sign up',
              //           style: Theme.of(context)
              //               .textTheme
              //               .headline6
              //               .copyWith(color: kPrimaryColor),
              //           // style: TextStyle(
              //           //   color: kPrimaryColor,
              //           //   fontWeight: FontWeight.w600,
              //           // ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      );
    });
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phonesed/application/auth/social_sign_in/social_sign_in_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../injection.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SocialSignInBloc>(),
      child: BlocConsumer<SocialSignInBloc, SocialSignInState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) => {
                FlushbarHelper.createError(
                  message: failure.maybeMap(
                    canelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server Error',
                    orElse: () => 'Unknown Error',
                  ),
                ).show(context),
              },
              // (_) => ExtendedNavigator.of(context)
              // .replace(Routes.emailVerificationSentPage),
              (_) => ExtendedNavigator.of(context).replace(Routes.mainPage),
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              WelcomePageBody(),
              SavingInProgressOverlay(
                isSaving: state.isSubmitting,
                title: '',
              ),
            ],
          );
        },
      ),
    );
  }
}

class WelcomePageBody extends StatelessWidget {
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
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Phonesed',
                  style: GoogleFonts.pacifico(
                    color: kPrimaryColor,
                    fontSize: 58,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to Phonesed',
                  style: Theme.of(context).textTheme.headline4,
                  // style: TextStyle(
                  //   color: Colors.black,
                  //   fontSize: 28,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Create an account to start publish your devices for sell or exchange.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                  // style: TextStyle(
                  //   color: Colors.grey,
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.w200,
                  // ),
                ),
                const SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () => context
                      .read<SocialSignInBloc>()
                      .add(const SocialSignInEvent.signInWithGooglePressed()),
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
                      children: [
                        Image.asset(
                          'assets/images/google_PNG19635.png',
                          fit: BoxFit.cover,
                          width: 31,
                          height: 31,
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Sign in with Google',
                            style: Theme.of(context).textTheme.button.copyWith(
                                color: kPrimaryDarkColor, fontSize: 20),
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
                  // color: Colors.white,
                  color: kPrimaryLightColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: const Icon(
                            Icons.email,
                            color: kPrimaryColor,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              ExtendedNavigator.of(context).pushSignInPage();
                            },
                            child: Text(
                              'Sign in with email',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      color: kPrimaryDarkColor, fontSize: 20),
                              // style: TextStyle(
                              //   fontSize: 20,
                              //   fontWeight: FontWeight.w600,
                              //   color: Colors.black,
                              // ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                FlatButton(
                  onPressed: () =>
                      ExtendedNavigator.of(context).pushSignUpPage(),
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account?  ",
                      style: Theme.of(context).textTheme.button.copyWith(
                            color: kPrimaryDarkColor,
                            fontSize: 13,
                          ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: kPrimaryColor,
                                fontSize: 13,
                              ),
                        ),
                      ],
                    ),
                  ),
                  // child: Text(
                  //   "You don't have an account?   Sign Up",
                  // style: Theme.of(context).textTheme.button.copyWith(
                  //       color: kPrimaryColor,
                  //       fontSize: 13,
                  //     ),
                  // ),
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                    text: 'By signing up you agree to the ',
                    style: TextStyle(color: Colors.grey[400]),
                    children: [
                      TextSpan(
                        text: 'Terms & Conditions ',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                          color: kPrimaryColor,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                )
                // if (state.isSubmitting) ...[
                //   const Center(
                //     child: SpinKitFadingFour(
                //       color: kPrimaryColor,
                //     ),
                //   ),
                // ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/auth/social_sign_in/social_sign_in_bloc.dart';
import 'package:phonesed/constants.dart';
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        Text(
                          'Phonesed',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 58,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Welcome to Phonesed',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Create an account to start publish your devices or exchange devices',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        RaisedButton(
                          onPressed: () => context.bloc<SocialSignInBloc>().add(
                              const SocialSignInEvent
                                  .signInWithGooglePressed()),
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
                                // Icon(Icons.smoke_free),
                                const SizedBox(width: 20),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // RaisedButton(
                        //   onPressed: () {},
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(8),
                        //   ),
                        //   textColor: Colors.grey,
                        //   elevation: 0,
                        //   highlightElevation: 0,
                        //   color: kPrimaryLightColor,
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(vertical: 6.0),
                        //     child: Row(
                        //       children: const [
                        //         Icon(Icons.sms),
                        //         SizedBox(width: 20),
                        //         Padding(
                        //           padding: EdgeInsets.all(16.0),
                        //           child: Text(
                        //             'Sign in with Facebook',
                        //             style: TextStyle(
                        //               fontSize: 20,
                        //               color: Colors.black,
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(height: 24),
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
                          color: Colors.white,
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
                                      ExtendedNavigator.of(context)
                                          .pushSignInPage();
                                    },
                                    child: const Text(
                                      'Sign in with email',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (state.isSubmitting) ...[
                          const Center(
                            child: SpinKitFadingFour(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}

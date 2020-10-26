import 'package:auto_route/auto_route_annotations.dart';
import 'package:phonesed/presentation/auth/sign_in_page.dart';
import 'package:phonesed/presentation/auth/sign_up_page.dart';
import 'package:phonesed/presentation/auth/welcome_page.dart';
import 'package:phonesed/presentation/core/main_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: MainPage, initial: true),
    MaterialRoute(page: WelcomePage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
  ],
)
class $Router {}

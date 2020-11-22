import 'package:auto_route/auto_route_annotations.dart';
import 'package:phonesed/presentation/auth/email_verification_sent_page.dart';
import 'package:phonesed/presentation/auth/sign_in_page.dart';
import 'package:phonesed/presentation/auth/sign_up_page.dart';
import 'package:phonesed/presentation/auth/welcome_page.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_page.dart';
import 'package:phonesed/presentation/core/main_page.dart';
import 'package:phonesed/presentation/posts/new_post_form/new_post_form_page.dart';
import 'package:phonesed/presentation/posts/new_post_form/pages/new_post_form_device_details.dart';
import 'package:phonesed/presentation/posts/new_post_form/pages/success_post_page.dart';
import 'package:phonesed/presentation/posts/post_detail/post_detail_page.dart';
import 'package:phonesed/presentation/posts/post_form/post_form_page.dart';
import 'package:phonesed/presentation/profile/my_posts_watcher/my_posts_watcher_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: MainPage, initial: true),
    MaterialRoute(page: WelcomePage),
    MaterialRoute(page: EmailVerificationSentPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: NewPostFormPage, fullscreenDialog: true),
    MaterialRoute(page: PostFormPage, fullscreenDialog: true),
    MaterialRoute(page: PostDetailPage),
    MaterialRoute(page: ChatPage, fullscreenDialog: true),
    MaterialRoute(page: MyPostsWatcherPage),
    MaterialRoute(page: SuccessPostPage, fullscreenDialog: true),
  ],
)
class $Router {}

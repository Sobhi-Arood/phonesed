// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';
import '../../domain/entities/user.dart';
import '../../infrastructure/posts/post_primitive_presentation.dart';
import '../auth/email_verification_sent_page.dart';
import '../auth/sign_in_page.dart';
import '../auth/sign_up_page.dart';
import '../auth/welcome_page.dart';
import '../chats/chat_page/chat_page.dart';
import '../core/main_page.dart';
import '../posts/new_post_form/new_post_form_page.dart';
import '../posts/new_post_form/pages/success_post_page.dart';
import '../posts/post_detail/post_detail_page.dart';
import '../posts/post_form/post_form_page.dart';
import '../posts/post_watcher/filter_posts_watcher_page.dart';
import '../profile/my_posts_watcher/my_posts_watcher_page.dart';
import '../profile/profile_details_page/profile_details_page.dart';

class Routes {
  static const String mainPage = '/';
  static const String welcomePage = '/welcome-page';
  static const String emailVerificationSentPage =
      '/email-verification-sent-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String newPostFormPage = '/new-post-form-page';
  static const String postFormPage = '/post-form-page';
  static const String postDetailPage = '/post-detail-page';
  static const String chatPage = '/chat-page';
  static const String myPostsWatcherPage = '/my-posts-watcher-page';
  static const String profileDetailsPage = '/profile-details-page';
  static const String filterPostsWatchPage = '/filter-posts-watch-page';
  static const String successPostPage = '/success-post-page';
  static const all = <String>{
    mainPage,
    welcomePage,
    emailVerificationSentPage,
    signInPage,
    signUpPage,
    newPostFormPage,
    postFormPage,
    postDetailPage,
    chatPage,
    myPostsWatcherPage,
    profileDetailsPage,
    filterPostsWatchPage,
    successPostPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.emailVerificationSentPage, page: EmailVerificationSentPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.newPostFormPage, page: NewPostFormPage),
    RouteDef(Routes.postFormPage, page: PostFormPage),
    RouteDef(Routes.postDetailPage, page: PostDetailPage),
    RouteDef(Routes.chatPage, page: ChatPage),
    RouteDef(Routes.myPostsWatcherPage, page: MyPostsWatcherPage),
    RouteDef(Routes.profileDetailsPage, page: ProfileDetailsPage),
    RouteDef(Routes.filterPostsWatchPage, page: FilterPostsWatchPage),
    RouteDef(Routes.successPostPage, page: SuccessPostPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MainPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainPage(),
        settings: data,
      );
    },
    WelcomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePage(),
        settings: data,
      );
    },
    EmailVerificationSentPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmailVerificationSentPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    NewPostFormPage: (data) {
      final args = data.getArgs<NewPostFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewPostFormPage(
          key: args.key,
          post: args.post,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PostFormPage: (data) {
      final args = data.getArgs<PostFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostFormPage(
          key: args.key,
          editedPost: args.editedPost,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    PostDetailPage: (data) {
      final args = data.getArgs<PostDetailPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostDetailPage(
          key: args.key,
          post: args.post,
        ),
        settings: data,
      );
    },
    ChatPage: (data) {
      final args = data.getArgs<ChatPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatPage(
          key: args.key,
          postPrimitive: args.postPrimitive,
          displayUserName: args.displayUserName,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    MyPostsWatcherPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyPostsWatcherPage(),
        settings: data,
      );
    },
    ProfileDetailsPage: (data) {
      final args = data.getArgs<ProfileDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileDetailsPage(
          key: args.key,
          user: args.user,
        ),
        settings: data,
      );
    },
    FilterPostsWatchPage: (data) {
      final args = data.getArgs<FilterPostsWatchPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => FilterPostsWatchPage(
          filterCity: args.filterCity,
          filterBrand: args.filterBrand,
          filterExchangable: args.filterExchangable,
          filterHeadphones: args.filterHeadphones,
          filterPrice: args.filterPrice,
        ),
        settings: data,
      );
    },
    SuccessPostPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SuccessPostPage(),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushMainPage() => push<dynamic>(Routes.mainPage);

  Future<dynamic> pushWelcomePage() => push<dynamic>(Routes.welcomePage);

  Future<dynamic> pushEmailVerificationSentPage() =>
      push<dynamic>(Routes.emailVerificationSentPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushNewPostFormPage({
    Key key,
    @required Post post,
  }) =>
      push<dynamic>(
        Routes.newPostFormPage,
        arguments: NewPostFormPageArguments(key: key, post: post),
      );

  Future<dynamic> pushPostFormPage({
    Key key,
    @required Post editedPost,
  }) =>
      push<dynamic>(
        Routes.postFormPage,
        arguments: PostFormPageArguments(key: key, editedPost: editedPost),
      );

  Future<dynamic> pushPostDetailPage({
    Key key,
    @required Post post,
  }) =>
      push<dynamic>(
        Routes.postDetailPage,
        arguments: PostDetailPageArguments(key: key, post: post),
      );

  Future<dynamic> pushChatPage({
    Key key,
    @required PostPrimitive postPrimitive,
    @required String displayUserName,
  }) =>
      push<dynamic>(
        Routes.chatPage,
        arguments: ChatPageArguments(
            key: key,
            postPrimitive: postPrimitive,
            displayUserName: displayUserName),
      );

  Future<dynamic> pushMyPostsWatcherPage() =>
      push<dynamic>(Routes.myPostsWatcherPage);

  Future<dynamic> pushProfileDetailsPage({
    Key key,
    @required User user,
  }) =>
      push<dynamic>(
        Routes.profileDetailsPage,
        arguments: ProfileDetailsPageArguments(key: key, user: user),
      );

  Future<dynamic> pushFilterPostsWatchPage({
    @required String filterCity,
    @required String filterBrand,
    @required bool filterExchangable,
    @required bool filterHeadphones,
    @required String filterPrice,
  }) =>
      push<dynamic>(
        Routes.filterPostsWatchPage,
        arguments: FilterPostsWatchPageArguments(
            filterCity: filterCity,
            filterBrand: filterBrand,
            filterExchangable: filterExchangable,
            filterHeadphones: filterHeadphones,
            filterPrice: filterPrice),
      );

  Future<dynamic> pushSuccessPostPage() =>
      push<dynamic>(Routes.successPostPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NewPostFormPage arguments holder class
class NewPostFormPageArguments {
  final Key key;
  final Post post;
  NewPostFormPageArguments({this.key, @required this.post});
}

/// PostFormPage arguments holder class
class PostFormPageArguments {
  final Key key;
  final Post editedPost;
  PostFormPageArguments({this.key, @required this.editedPost});
}

/// PostDetailPage arguments holder class
class PostDetailPageArguments {
  final Key key;
  final Post post;
  PostDetailPageArguments({this.key, @required this.post});
}

/// ChatPage arguments holder class
class ChatPageArguments {
  final Key key;
  final PostPrimitive postPrimitive;
  final String displayUserName;
  ChatPageArguments(
      {this.key, @required this.postPrimitive, @required this.displayUserName});
}

/// ProfileDetailsPage arguments holder class
class ProfileDetailsPageArguments {
  final Key key;
  final User user;
  ProfileDetailsPageArguments({this.key, @required this.user});
}

/// FilterPostsWatchPage arguments holder class
class FilterPostsWatchPageArguments {
  final String filterCity;
  final String filterBrand;
  final bool filterExchangable;
  final bool filterHeadphones;
  final String filterPrice;
  FilterPostsWatchPageArguments(
      {@required this.filterCity,
      @required this.filterBrand,
      @required this.filterExchangable,
      @required this.filterHeadphones,
      @required this.filterPrice});
}

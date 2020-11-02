// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';
import '../auth/sign_in_page.dart';
import '../auth/sign_up_page.dart';
import '../auth/welcome_page.dart';
import '../core/main_page.dart';
import '../posts/post_detail/post_detail_page.dart';
import '../posts/post_form/post_form_page.dart';

class Routes {
  static const String mainPage = '/';
  static const String welcomePage = '/welcome-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String postFormPage = '/post-form-page';
  static const String postDetailPage = '/post-detail-page';
  static const all = <String>{
    mainPage,
    welcomePage,
    signInPage,
    signUpPage,
    postFormPage,
    postDetailPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.mainPage, page: MainPage),
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.postFormPage, page: PostFormPage),
    RouteDef(Routes.postDetailPage, page: PostDetailPage),
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
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushMainPage() => push<dynamic>(Routes.mainPage);

  Future<dynamic> pushWelcomePage() => push<dynamic>(Routes.welcomePage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

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
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

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

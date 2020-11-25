import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:injectable/injectable.dart';
import 'package:phonesed/domain/posts/i_share_facade.dart';
import 'package:phonesed/domain/posts/post_failure.dart';

@LazySingleton(as: IShareFacade)
class DynamicLinksShareService implements IShareFacade {
  final FirebaseDynamicLinks _firebaseDynamicLinks;
  DynamicLinksShareService(this._firebaseDynamicLinks);

  @override
  Future<String> handleDynamicLinks() async {
    try {
      // STARTUP FROM DYNAMIC LINK LOGIC
      final PendingDynamicLinkData data =
          await _firebaseDynamicLinks.getInitialLink();

      if (data?.link != null) {
        print('First one');
        return _handleDeepLink(data);
      }

      // INTO FOREGROUND FROM DYNAMIC LINK LOGIC
      _firebaseDynamicLinks.onLink(
          onSuccess: (PendingDynamicLinkData dynamicLinkData) async {
        print('Second one');
        return _handleDeepLink(dynamicLinkData);
      }, onError: (OnLinkErrorException e) async {
        return 'Error';
      });

      return 'Error';
    } catch (e) {
      return 'Error';
    }
  }

  String _handleDeepLink(PendingDynamicLinkData data) {
    final Uri deepLink = data?.link;
    if (deepLink != null) {
      print('DEEP LINK | DEEP LINK: $deepLink');

      final isPost = deepLink.pathSegments.contains('post');
      if (isPost) {
        final title = deepLink.queryParameters['id'];

        if (title != null) {
          // return some(title);
          return title;
        }
      }
    }
    return '';
    // return none();
  }

  @override
  Future<Either<PostFailure, String>> createSharePostLink(
      String postId, String title, String description, String imageUrl) async {
    try {
      final DynamicLinkParameters parameters = DynamicLinkParameters(
          uriPrefix: 'https://phonesed.page.link',
          link: Uri.parse('https://www.phonesed.com/post?id=$postId'),
          androidParameters:
              AndroidParameters(packageName: 'com.sobhi.phonesed'),
          iosParameters: IosParameters(
              bundleId: 'com.sobhi.phonesed',
              minimumVersion: '1.0.0',
              appStoreId: '1234567'),
          socialMetaTagParameters: SocialMetaTagParameters(
              title: title,
              description: description,
              imageUrl: Uri.parse(imageUrl)));

      final Uri dynamicUrl = await parameters.buildUrl();
      return right(dynamicUrl.toString());
    } catch (e) {
      return left(const PostFailure.unexpected());
    }
  }
}

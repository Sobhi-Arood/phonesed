import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/domain/posts/post_location.dart';

class PostImage extends ValueNotifier<KtList<File>> {
  PostImage() : super(emptyList<File>());
}

// class PostCityAndArea extends ValueNotifier<PostLocation> {
//   PostCityAndArea();
// }

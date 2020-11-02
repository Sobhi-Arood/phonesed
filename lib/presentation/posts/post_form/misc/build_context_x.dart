import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:provider/provider.dart';

extension PostImageX on BuildContext {
  KtList<File> get postImages =>
      Provider.of<PostImage>(this, listen: false).value;

  set postImages(KtList<File> value) =>
      Provider.of<PostImage>(this, listen: false).value = value;
}

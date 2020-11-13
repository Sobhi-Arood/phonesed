import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:provider/provider.dart';
import 'package:phonesed/presentation/posts/post_form/misc/build_context_x.dart';
import 'package:kt_dart/kt.dart';
import 'package:network_to_file_image/network_to_file_image.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.post.images.isFull != c.post.images.isFull,
      listener: (context, state) {
        if (state.post.images.isFull) {
          FlushbarHelper.createError(
                  message: 'Maximum three images',
                  duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      child: Consumer<PostImage>(
        builder: (context, postImages, child) {
          return Container(
            height: postImages.value.size > 0 ? 200 : 0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: postImages.value.size,
              itemBuilder: (context, index) {
                return ImageTile(
                  index: index,
                  key: ValueKey(context.postImages[index].path),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  final int index;
  const ImageTile({@required this.index, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final img = context.postImages.getOrElse(index, (_) => null);
    print(img.path);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            width: MediaQuery.of(context).size.width / 3,
            height: 150,
            fit: BoxFit.cover,
            // image: FileImage(img),
            image: NetworkToFileImage(file: img, url: img.path),
          ),
        ),
        Positioned(
          right: 0,
          top: 5,
          child: Container(
            width: 35,
            height: 35,
            color: Colors.red,
            child: IconButton(
              iconSize: 12,
              color: Colors.white,
              icon: const Icon(Icons.minimize),
              onPressed: () {
                context.postImages = context.postImages.minusElement(img);
                context
                    .bloc<PostFormBloc>()
                    .add(PostFormEvent.imagesChanged(context.postImages));
              },
            ),
          ),
        )
      ],
    );
  }
}

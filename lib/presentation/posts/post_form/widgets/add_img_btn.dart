import 'dart:io';

import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_picker_image/post_picker_image_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/posts/post_form/misc/build_context_x.dart';
import 'package:kt_dart/kt.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<PostPickerImageBloc, PostPickerImageState>(
        listener: (context, state) {
          state.map(
              initial: (_) => {},
              actionInProgress: (_) => {},
              pickImgFailure: (f) => {
                    f.valueFailure.maybeMap(
                        unknownError: (f) {
                          FlushbarHelper.createError(message: 'Unknown error')
                              .show(context);
                        },
                        orElse: () => {})
                  },
              pickImgSuccess: (file) {
                context.postImages = context.postImages.plusElement(file.img);

                context
                    .bloc<PostFormBloc>()
                    .add(PostFormEvent.imagesChanged(context.postImages));
              });
        },
        child: BlocConsumer<PostFormBloc, PostFormState>(
          listenWhen: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            /// [Todo] map from url to file
            // context.postImages = state.post.images.value.fold(
            //     (f) => listOf<File>(),
            //     (imageList) => imageList.map((_) => emptyList<File>()));
          },
          buildWhen: (p, c) => p.post.images.isFull != c.post.images.isFull,
          builder: (context, state) {
            return ListTile(
                enabled: !state.post.images.isFull,
                tileColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                // elevation: 0,
                // highlightElevation: 0,
                // color: kPrimaryColor,
                title: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Add image +',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  context
                      .bloc<PostPickerImageBloc>()
                      .add(const PostPickerImageEvent.addClicked());
                });
          },
        ));
  }
}

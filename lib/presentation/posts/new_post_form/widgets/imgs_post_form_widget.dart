import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/add_img_btn.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/img_list_widget.dart';
import 'package:provider/provider.dart';
import 'package:phonesed/presentation/posts/post_form/misc/build_context_x.dart';

import '../../../../constants.dart';

class ImagesPostFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.post.images.isFull != c.post.images.isFull,
      listener: (context, state) {
        if (state.post.images.isFull) {
          FlushbarHelper.createError(
                  message: 'Maximum three images',
                  duration: const Duration(seconds: 5))
              .show(context);
        }
      },
      builder: (context, formState) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Container(
                //   child: const Text(
                //     'Add at least one image',
                //     style: TextStyle(color: Colors.red),
                //   ),
                // ),
                // const AddImageButton(),
                Expanded(
                  child: Consumer<PostImage>(
                    builder: (context, postImages, child) {
                      return Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: postImages.value.size + 1,
                          itemBuilder: (context, index) {
                            if (index == postImages.value.size) {
                              return Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AddImageButton(),
                                  ],
                                ),
                              );
                            }

                            return ImageTile(
                              index: index,
                              key: ValueKey(context.postImages[index].path),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                if (formState.post.images.length > 0) ...[
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: formState.post.images.length > 0
                          ? () {
                              context.bloc<FormNavigationBloc>().add(
                                  const FormNavigationEvent.pageChanged(3));
                            }
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                      highlightElevation: 0,
                      color: kPrimaryColor,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}

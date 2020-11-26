import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/presentation/posts/post_form/misc/post_img_presentation.dart';
import 'package:phonesed/presentation/posts/post_form/widgets/add_img_btn.dart';
import 'package:provider/provider.dart';
import 'package:phonesed/presentation/posts/post_form/misc/build_context_x.dart';
import 'package:kt_dart/kt.dart';
import 'package:network_to_file_image/network_to_file_image.dart';

class UpdateImagesList extends StatelessWidget {
  const UpdateImagesList({Key key}) : super(key: key);
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
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: postImages.value.size + 1,
              itemBuilder: (context, index) {
                if (index == postImages.value.size) {
                  return Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AddImageButton(),
                      ],
                    ),
                  );
                }

                return UpdateImageTile(
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
                // return Text('df');
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

class ShowImageTile extends StatelessWidget {
  final int index;
  // final File img;
  const ShowImageTile({@required this.index, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final img = context.postImages.getOrElse(index, (_) => null);
    // print(img.path);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        width: MediaQuery.of(context).size.width / 2,
        // width: MediaQuery.of(context).size.width,
        height: 200,
        // height: 280,
        fit: BoxFit.contain,
        // image: FileImage(img),
        image: NetworkToFileImage(file: img, url: img.path),
      ),
    );
  }
}

class ImageTile extends StatelessWidget {
  final int index;
  // final File img;
  const ImageTile({@required this.index, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final img = context.postImages.getOrElse(index, (_) => null);
    // print(img.path);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            // width: MediaQuery.of(context).size.width / 3,
            width: MediaQuery.of(context).size.width,
            // height: 150,
            height: 280,
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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            // color: Colors.red,
            child: IconButton(
              iconSize: 12,
              color: Colors.white,
              icon: const Icon(Icons.close),
              onPressed: () {
                context.postImages = context.postImages.minusElement(img);
                context
                    .read<PostFormBloc>()
                    .add(PostFormEvent.imagesChanged(context.postImages));
              },
            ),
          ),
        )
      ],
    );
  }
}

class UpdateImageTile extends StatelessWidget {
  final int index;
  // final File img;
  const UpdateImageTile({@required this.index, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final img = context.postImages.getOrElse(index, (_) => null);
    // print(img.path);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            width: MediaQuery.of(context).size.width / 2,
            // width: MediaQuery.of(context).size.width,
            // height: 150,
            height: 200,
            fit: BoxFit.cover,
            // image: FileImage(img),
            image: NetworkToFileImage(
              file: img,
              url: img.path,
              processError: (error) {},
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 5,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            // color: Colors.red,
            child: IconButton(
              iconSize: 12,
              color: Colors.white,
              icon: const Icon(Icons.close),
              onPressed: () {
                context.postImages = context.postImages.minusElement(img);
                context
                    .read<PostFormBloc>()
                    .add(PostFormEvent.imagesChanged(context.postImages));
              },
            ),
          ),
        )
      ],
    );
  }
}

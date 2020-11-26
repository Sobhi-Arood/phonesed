import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_search/post_search_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/constants.dart';

class PostSearchTextField extends HookWidget {
  const PostSearchTextField({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Container(
      height: 80,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kPrimaryLightColor,
        ),
        child: TextFormField(
          showCursor: true,
          controller: textEditingController,
          autofocus: true,
          decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: kSecondaryLightColor,
              ),
              // prefixIcon: Icon(Icons.search),
              hintText: 'What are you looking for ...'),
          onChanged: (v) {
            // textEditingController.text = v;
            // controller.text = v;
            context
                .read<PostSearchBloc>()
                .add(PostSearchEvent.searchChanged(v));
            // context
            //     .read<PostWatcherBloc>()
            //     .add(PostWatcherEvent.searchChanged(v));
          },
        ),
      ),
    );

    // return BlocListener<PostSearchBloc, PostSearchState>(
    // return BlocListener<PostWatcherBloc, PostWatcherState>(
    //   listener: (context, state) {
    //     // textEditingController.text = state;
    //   },
    //   child: Container(
    //     height: 80,
    //     padding: const EdgeInsets.all(16),
    //     color: Colors.white,
    //     child: Container(
    //       padding: const EdgeInsets.all(8),
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(50),
    //         color: kPrimaryLightColor,
    //       ),
    //       child: TextFormField(
    //         showCursor: true,
    //         // controller: textEditingController,
    //         // autofocus: false,
    //         decoration: const InputDecoration(
    //             icon: Icon(Icons.search),
    //             // prefixIcon: Icon(Icons.search),
    //             hintText: 'What are you looking for ...'),
    //         onChanged: (v) {
    //           // textEditingController.text = v;
    //           // controller.text = v;
    //           // context
    //           //     .read<PostSearchBloc>()
    //           //     .add(PostSearchEvent.searchChanged(v));
    //           context
    //               .read<PostWatcherBloc>()
    //               .add(PostWatcherEvent.searchChanged(v));
    //         },
    //       ),
    //     ),
    //   ),
    // );
  }
}

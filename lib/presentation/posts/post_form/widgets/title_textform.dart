import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

import '../../../../constants.dart';

class TitleTextForm extends HookWidget {
  const TitleTextForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.post.title != c.post.title,
      listener: (context, state) {
        textEditingController.text = state.post.title.getOrCrash();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Title',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: kSecondaryLightColor),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Enter post title ...',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w500, color: kSecondaryLightColor),
              ),
              style: const TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              // maxLength: PostTitle.maxLength,
              // minLines: 1,
              onChanged: (value) => context
                  .bloc<PostFormBloc>()
                  .add(PostFormEvent.titleChanged(value)),
              validator: (_) => context
                  .bloc<PostFormBloc>()
                  .state
                  .post
                  .title
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          empty: (_) => 'Cannot be empty',
                          orElse: () => 'Wrong format'),
                      (_) => null),
            ),
          )
        ],
      ),
    );
  }
}

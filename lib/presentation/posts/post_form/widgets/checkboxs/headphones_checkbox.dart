import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';

import '../../../../../constants.dart';

class HeadphonesCheckbox extends StatelessWidget {
  const HeadphonesCheckbox({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (p, c) => p.post.headphones != c.post.headphones,
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: state.post.headphones,
                onChanged: (v) {
                  context
                      .bloc<PostFormBloc>()
                      .add(PostFormEvent.headphonesChanged(v));
                }),
            const Text('Headphones',
                style: TextStyle(
                  color: kPrimaryDarkColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                )),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';

import '../../../../../constants.dart';

class NegotiableCheckbox extends StatelessWidget {
  const NegotiableCheckbox({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (p, c) => p.post.negiotable != c.post.negiotable,
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: state.post.negiotable,
                onChanged: (v) {
                  context
                      .bloc<PostFormBloc>()
                      .add(PostFormEvent.negotiableChanged(v));
                }),
            const Text('Negotiable',
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

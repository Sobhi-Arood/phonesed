import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';

import '../../../../../constants.dart';

class ExchangableCheckbox extends StatelessWidget {
  const ExchangableCheckbox({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (p, c) => p.post.exhangable != c.post.exhangable,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                value: state.post.exhangable,
                onChanged: (v) {
                  context
                      .bloc<PostFormBloc>()
                      .add(PostFormEvent.exchangableChanged(v));
                }),
            const Text('Exchangable',
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

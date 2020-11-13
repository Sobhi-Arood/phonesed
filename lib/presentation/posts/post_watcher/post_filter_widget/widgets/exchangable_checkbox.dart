import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';

import '../../../../../constants.dart';

class FilterExchangableCheckbox extends StatelessWidget {
  const FilterExchangableCheckbox({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: state.exchangable,
                onChanged: (v) {
                  context
                      .bloc<PostsFormFilterBloc>()
                      .add(PostsFormFilterEvent.exchangableChanged(v));
                }),
            const Text(
              'Exchangable',
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ],
        );
      },
    );
  }
}

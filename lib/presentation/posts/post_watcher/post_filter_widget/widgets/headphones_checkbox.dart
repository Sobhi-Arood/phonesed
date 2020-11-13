import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';

import '../../../../../constants.dart';

class FilterHeadphonesCheckbox extends StatelessWidget {
  const FilterHeadphonesCheckbox({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: state.headphones,
                onChanged: (v) {
                  context
                      .bloc<PostsFormFilterBloc>()
                      .add(PostsFormFilterEvent.headphonesChanged(v));
                }),
            const Text(
              'Headphones',
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

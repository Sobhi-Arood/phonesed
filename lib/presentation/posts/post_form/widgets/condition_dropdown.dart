import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

import '../../../../constants.dart';

class ConditionDropdown extends StatelessWidget {
  const ConditionDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('Apple');
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (p, c) => p.post.condition != c.post.condition,
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Condition',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryLightColor),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: state.post.condition.getOrCrash(),
                    elevation: 0,
                    isExpanded: true,
                    style: const TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    onChanged: (v) {
                      FocusScope.of(context).unfocus();
                      context
                          .read<PostFormBloc>()
                          .add(PostFormEvent.conditionChanged(v));
                    },
                    items: PostCondition.conditions
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

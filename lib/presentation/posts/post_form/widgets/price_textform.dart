import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

import '../../../../constants.dart';

class PriceTextForm extends HookWidget {
  const PriceTextForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<PostFormBloc, PostFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.post.price.getOrCrash().toString();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Price',
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
              controller: textEditingController,
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter price ...',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w500, color: kSecondaryLightColor),
              ),
              style: const TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
              onChanged: (value) => context
                  .read<PostFormBloc>()
                  .add(PostFormEvent.priceChanged(int.parse(value))),
              validator: (_) => context
                  .read<PostFormBloc>()
                  .state
                  .post
                  .price
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          negitaveOrLessAmount: (_) => 'Cannot be empty',
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

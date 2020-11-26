import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/constants.dart';

class PriceSlider extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final maxPrice = useState(0);
    return BlocConsumer<PostsFormFilterBloc, PostsFormFilterState>(
        listener: (context, state) {
      // maxPrice.value = state.maxPrice.toInt();
    }, builder: (context, state) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: ${state.price}',
              style: TextStyle(
                  color: kSecondaryLightColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            Slider(
              // value: maxPrice.value.toDouble(),
              // value: state.maxPrice.toDouble(),
              value: 0,
              onChanged: (v) {
                // maxPrice.value = v.toInt();
                // context
                //     .read<PostsFormFilterBloc>()
                //     .add(PostsFormFilterEvent.maxPriceChanged(v.toInt()));
              },
              label: '$maxPrice',
              min: 0,
              max: 5000,
              activeColor: kPrimaryDarkColor,
            ),
          ],
        ),
      );
    });
  }
}

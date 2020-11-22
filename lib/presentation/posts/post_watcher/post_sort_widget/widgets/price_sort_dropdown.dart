import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/posts_sort/posts_form_sort/posts_form_sort_bloc.dart';
import 'package:phonesed/constants.dart';

class PriceSortDropdown extends StatelessWidget {
  const PriceSortDropdown({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsFormSortBloc, PostsFormSortState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sort price',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: kSecondaryLightColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: state.sortValue,
                    elevation: 0,
                    isExpanded: true,
                    style: const TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    onChanged: (v) {
                      context
                          .read<PostsFormSortBloc>()
                          .add(PostsFormSortEvent.sortValueChanged(v));
                    },
                    items: kSortPriceChooses.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem<String>(value: e, child: Text(e));
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

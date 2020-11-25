import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/posts_filter/posts_form_filter/posts_form_filter_bloc.dart';
import 'package:phonesed/constants.dart';

class FilterBrandDropdown extends HookWidget {
  const FilterBrandDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final brandValue = useState('');
    return BlocBuilder<PostsFormFilterBloc, PostsFormFilterState>(
      builder: (context, formState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Brand',
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
                    // value: brandValue.value,
                    value: formState.brand,
                    elevation: 0,
                    isExpanded: true,
                    style: const TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    onChanged: (v) {
                      // brandValue.value = v;
                      context
                          .read<PostsFormFilterBloc>()
                          .add(PostsFormFilterEvent.brandChanged(v));
                      // context.bloc<PostFormDevicesBloc>().add(
                      //     PostFormDevicesEvent.getDevicesStarted(v));
                    },
                    items: kFilterBrands.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
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

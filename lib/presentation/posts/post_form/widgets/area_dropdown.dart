import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';

import '../../../../constants.dart';

class AreaDropdown extends HookWidget {
  const AreaDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brandValue = useState(List.empty());
    return BlocConsumer<PostFormBloc, PostFormState>(
      listener: (context, state) {
        // brandValue.value.add()
        brandValue.value.addAll(state.cities[1]);
        print(brandValue.value);
      },
      buildWhen: (p, c) => p.post.area != c.post.area,
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Area',
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
                    value: state.post.area,
                    elevation: 0,
                    isExpanded: true,
                    style: TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    onChanged: (v) {
                      context
                          .bloc<PostFormBloc>()
                          .add(PostFormEvent.cityChanged(v));
                    },
                    items:
                        brandValue.value.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value[0].toString(),
                        child: Text(value[0].toString()),
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

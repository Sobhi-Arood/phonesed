import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';

import '../../../../../constants.dart';

class ModelsDropdown extends HookWidget {
  final List<String> modelsList;
  const ModelsDropdown({Key key, @required this.modelsList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final modelValue = useState('');
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
                value: modelValue.value,
                elevation: 0,
                isExpanded: true,
                style: const TextStyle(
                  color: kPrimaryDarkColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                onChanged: (v) {
                  modelValue.value = v;
                  context
                      .read<PostFormBloc>()
                      .add(PostFormEvent.deviceChanged(v));
                  // context.read<PostFormDevicesBloc>().add(
                  //     PostFormDevicesEvent.getDevicesStarted(v));
                },
                items: modelsList.map<DropdownMenuItem<String>>((value) {
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
  }
}

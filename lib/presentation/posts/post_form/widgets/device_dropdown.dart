import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';
import 'package:phonesed/domain/posts/value_objects.dart';

import '../../../../constants.dart';

class DeviceDropdown extends HookWidget {
  const DeviceDropdown({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceValue = useState('');
    return BlocConsumer<PostFormBloc, PostFormState>(
      listener: (context, state) {
        deviceValue.value = state.post.device.value.fold((l) => '', (r) => r);
      },
      buildWhen: (p, c) => p.post.device != c.post.device,
      builder: (context, formState) {
        // brandValue.value = state.post.brand.getOrCrash();
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Model',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryLightColor),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: const BoxDecoration(color: kPrimaryLightColor),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocConsumer<PostFormDevicesBloc, PostFormDevicesState>(
                listener: (context, state) {
                  // if (formState.post.device.getOrCrash().isEmpty) {
                  deviceValue.value = state.map(
                      initial: (_) => '',
                      loadInProgress: (_) => '',
                      loadCitiesSuccess: (s) => s.data[0],
                      loadCitiesFailure: (_) => '');
                  context
                      .bloc<PostFormBloc>()
                      .add(PostFormEvent.deviceChanged(deviceValue.value));
                  // }
                },
                builder: (context, dataState) {
                  return dataState.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => Container(
                            child: const Text('Loading...'),
                          ),
                      loadCitiesSuccess: (data) {
                        return DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              value: deviceValue.value,
                              elevation: 0,
                              isExpanded: true,
                              style: TextStyle(
                                color: kPrimaryDarkColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              onChanged: (v) {
                                deviceValue.value = v;
                                context
                                    .bloc<PostFormBloc>()
                                    .add(PostFormEvent.deviceChanged(v));
                              },
                              items: data.data
                                  .asList()
                                  .map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                      loadCitiesFailure: (_) => Container(
                            child: const Text('Error'),
                          ));
                },
              ),
            )
          ],
        );
      },
    );
  }
}

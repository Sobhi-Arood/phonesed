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
    // final deviceValue = useState('');
    return BlocConsumer<PostFormBloc, PostFormState>(
      listener: (context, state) {
        print(state.post.device.value.fold((l) => '', (r) => r));
      },
      buildWhen: (p, c) => p.post.device != c.post.device,
      builder: (context, formState) {
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
                  // print('hahahahhahahahaha');
                  // if (formState.post.device.getOrCrash().isEmpty) {

                  state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => Container(
                      child: const Text('Loading...'),
                    ),
                    loadDevicesSuccess: (s) {
                      // print('LAODOO SUCCESSOOOO ${s.data}');
                      // deviceValue.value = formState.post.device.value
                      //     .fold((l) => s.data[0], (r) => r);

                      // context
                      //     .read<PostFormBloc>()
                      //     .add(PostFormEvent.deviceChanged(deviceValue.value));
                    },
                    loadDevicesFailure: (_) => Container(
                      child: const Text('Error'),
                    ),
                  );

                  // }
                },
                builder: (context, dataState) {
                  return dataState.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => Container(
                      child: const Text('Loading...'),
                    ),
                    loadDevicesSuccess: (data) {
                      return DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: formState.post.device.getOrCrash(),
                            // value: 'iPhone 4',
                            elevation: 0,
                            isExpanded: true,
                            style: TextStyle(
                              color: kPrimaryDarkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                            onChanged: (v) {
                              context
                                  .read<PostFormBloc>()
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
                    loadDevicesFailure: (_) => Container(
                      child: const Text('Error'),
                    ),
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}

class DeviceValueWidget extends StatelessWidget {
  const DeviceValueWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormBloc, PostFormState>(
      buildWhen: (previous, current) =>
          previous.post.device != current.post.device,
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Model',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kSecondaryLightColor,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              state.post.device.value.fold((l) => 'Error', (r) => r),
              style: const TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

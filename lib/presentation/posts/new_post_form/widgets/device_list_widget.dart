import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';

import '../../../../constants.dart';

class DeviceListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostFormDevicesBloc, PostFormDevicesState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: SpinKitFadingFour(
                    color: kPrimaryColor,
                  ),
                ),
            loadDevicesSuccess: (data) {
              return Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: ListView.builder(
                  itemCount: data.data.size,
                  itemBuilder: (context, index) {
                    final it = data.data[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            it,
                            style: Theme.of(context).textTheme.headline6,
                            // style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            context
                                .read<PostFormBloc>()
                                .add(PostFormEvent.deviceChanged(it));
                            context
                                .read<FormNavigationBloc>()
                                .add(const FormNavigationEvent.pageChanged(2));
                          },
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ),
              );
            },
            loadDevicesFailure: (_) => Container(
                  child: const Center(
                    child: Text('Error'),
                  ),
                ));
      },
    );
  }
}

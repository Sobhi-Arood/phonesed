import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/presentation/posts/new_post_form/pages/new_post_form_device_details.dart';

import 'brand_post_form_widget.dart';

class FormTabBarViewWidget extends HookWidget {
  const FormTabBarViewWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _tabBarController = useTabController(initialLength: 3);
    return BlocBuilder<FormNavigationBloc, FormNavigationState>(
      builder: (context, state) {
        _tabBarController.index = state.currentIndex;
        return TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabBarController,
          children: [
            BrandPostFormWidget(),
            DeviceFormDetailsWidget(),
            Container()
          ],
        );
      },
    );
  }
}

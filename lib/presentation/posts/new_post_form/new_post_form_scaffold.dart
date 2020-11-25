import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/presentation/posts/new_post_form/widgets/form_tab_bar_view_widget.dart';

import '../../routes/router.gr.dart';

class NewPostFormScaffold extends StatelessWidget {
  const NewPostFormScaffold({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: BlocBuilder<FormNavigationBloc, FormNavigationState>(
          builder: (context, state) {
            if (state.currentIndex == 1) {
              return const Text(
                'Choose the model',
                style: TextStyle(
                    // color: kPrimaryDarkColor,
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              );
            } else if (state.currentIndex == 2) {
              return const Text(
                'Add device images',
                style: TextStyle(
                    // color: kPrimaryDarkColor,
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              );
            } else if (state.currentIndex == 3) {
              return const Text(
                'Complete device details',
                style: TextStyle(
                    // color: kPrimaryDarkColor,
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              );
            } else {
              return Container();
            }
          },
        ),
        leading: BlocBuilder<FormNavigationBloc, FormNavigationState>(
          builder: (context, state) {
            if (state.currentIndex != 0) {
              return IconButton(
                  icon:
                      const Icon(Icons.chevron_left, color: kPrimaryDarkColor),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context.read<FormNavigationBloc>().add(
                        FormNavigationEvent.pageChanged(
                            state.currentIndex - 1));
                  });
            } else {
              return IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: kPrimaryDarkColor,
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    ExtendedNavigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.mainPage);
                  });
            }
          },
        ),
      ),
      body: const FormTabBarViewWidget(),
      // const Expanded(child: BrandPostFormWidget()),
    );
  }
}

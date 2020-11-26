import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/core/form_navigation/form_navigation_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_areas/post_form_areas_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_brands/post_form_brands_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_picker_image/post_picker_image_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/injection.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
import 'package:phonesed/presentation/posts/new_post_form/new_post_form_scaffold.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class NewPostFormPage extends StatelessWidget {
  final Post post;
  const NewPostFormPage({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FormNavigationBloc>(
            create: (context) => getIt<FormNavigationBloc>()),
        BlocProvider<PostPickerImageBloc>(
            create: (context) => getIt<PostPickerImageBloc>()),
        BlocProvider<PostFormBloc>(
            create: (context) => getIt<PostFormBloc>()
              ..add(PostFormEvent.initialized(optionOf(post)))),
        BlocProvider<PostFormBrandsBloc>(
          create: (context) => getIt<PostFormBrandsBloc>()
            ..add(
              const PostFormBrandsEvent.getBrandsStarted(),
            ),
        ),
        BlocProvider<PostFormCitiesBloc>(
          create: (context) => getIt<PostFormCitiesBloc>()
            ..add(
              const PostFormCitiesEvent.getCitiesStarted(),
            ),
        ),
        BlocProvider<PostFormDevicesBloc>(
            create: (context) => getIt<PostFormDevicesBloc>()),
        BlocProvider<PostFormAreasBloc>(
            create: (context) => getIt<PostFormAreasBloc>()),
      ],
      child: BlocConsumer<PostFormBloc, PostFormState>(
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
              () {},
              (either) => {
                    either.fold(
                      (failure) {
                        FlushbarHelper.createError(
                          message: failure.map(
                              unexpected: (_) => 'Unexpected error.',
                              insufficientPermission: (_) =>
                                  'Insufficient Permission',
                              unableToUpdate: (_) => "Couldn't update : error.",
                              notLoggedIn: (_) => ''),
                        ).show(context);
                      },
                      (_) =>
                          ExtendedNavigator.of(context).pushSuccessPostPage(),
                      // ExtendedNavigator.of(context).popUntil(
                      // (route) => route.settings.name == Routes.mainPage),
                    )
                  });
        },
        builder: (context, state) {
          return Stack(
            children: [
              const NewPostFormScaffold(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
                title: 'saving',
              ),
            ],
          );
        },
      ),
    );
  }
}

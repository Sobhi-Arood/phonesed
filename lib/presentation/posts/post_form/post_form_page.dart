import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_areas/post_form_areas_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_brands/post_form_brands_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_cities/post_form_cities_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_form_devices/post_form_devices_bloc.dart';
import 'package:phonesed/application/posts/post_form/post_picker_image/post_picker_image_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
import 'package:phonesed/presentation/posts/post_form/post_form_scaffold.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../../injection.dart';

class PostFormPage extends StatelessWidget {
  final Post editedPost;

  const PostFormPage({Key key, @required this.editedPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<PostPickerImageBloc>()),
          BlocProvider(
              create: (context) => getIt<PostFormBloc>()
                ..add(PostFormEvent.initialized(optionOf(editedPost)))),
          BlocProvider(
            create: (context) => getIt<PostFormCitiesBloc>()
              ..add(
                const PostFormCitiesEvent.getCitiesStarted(),
              ),
          ),
          BlocProvider(create: (context) => getIt<PostFormAreasBloc>()),
          BlocProvider(
            create: (context) => getIt<PostFormBrandsBloc>()
              ..add(
                const PostFormBrandsEvent.getBrandsStarted(),
              ),
          ),
          BlocProvider(create: (context) => getIt<PostFormDevicesBloc>()),
        ],
        child: BlocConsumer<PostFormBloc, PostFormState>(
          listenWhen: (p, c) =>
              p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
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
                                unableToUpdate: (_) =>
                                    "Couldn't update : error.",
                                notLoggedIn: (_) => ''),
                          ).show(context);
                        },
                        (_) => ExtendedNavigator.of(context).popUntil(
                            (route) => route.settings.name == Routes.mainPage),
                      )
                    });
          },
          buildWhen: (p, c) => p.isSaving != c.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                const PostFormPageScaffold(),
                SavingInProgressOverlay(isSaving: state.isSaving),
              ],
            );
          },
        ));
    // return BlocProvider(
    //     create: (context) => getIt<PostFormBloc>()
    //       ..add(PostFormEvent.initialized(optionOf(editedPost))),
    //     child: );
  }
}

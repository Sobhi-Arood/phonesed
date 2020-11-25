import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/core/user_profile/avatar_user/avatar_user_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';

import '../../../constants.dart';

class CircularUserAvatar extends HookWidget {
  // final String avatarUrl;
  const CircularUserAvatar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final img = useState(avatarUrl);
    return BlocListener<AvatarUserBloc, AvatarUserState>(
      listener: (context, state) {
        state.map(
            initial: (_) => {},
            actionInProgress: (_) => const Center(
                  child: SpinKitFadingFour(
                    color: kPrimaryColor,
                  ),
                ),
            pickImgFailure: (f) {
              f.valueFailure.maybeMap(
                  unknownError: (f) {
                    FlushbarHelper.createError(message: 'Unknown error')
                        .show(context);
                  },
                  orElse: () => {});
            },
            pickImgSuccess: (url) {
              context
                  .bloc<UserProfileBloc>()
                  .add(UserProfileEvent.avatarChanged(url.url));
              // img.value = url.url;
              // print('hahahahahahaha'),
              // FlushbarHelper.createError(message: 'Helllloo').show(context)
            });
        // state.maybeMap(
        //   pickImgSuccess: (state) {
        //     img.value = state.userAvatar;
        //   },
        //   orElse: () {},
        // );
        // state.map(
        //     initial: (_) {},
        //     actionInProgress: (_) {},
        //     pickImgFailure: (e) => {},
        //     pickImgSuccess: (e) => {img.value = e.userAvatar.getOrCrash()});
      },
      child: InkWell(
          radius: 60,
          onTap: () {
            context
                .read<AvatarUserBloc>()
                .add(const AvatarUserEvent.avatarClicked());
          },
          child: BlocConsumer<UserProfileBloc, UserProfileState>(
            listener: (context, state) {
              state.maybeMap(
                  loadInProgress: (_) => const Center(
                        child: SpinKitFadingFour(
                          color: kPrimaryColor,
                        ),
                      ),
                  loadSuccess: (_) => {
                        context
                            .read<UserProfileBloc>()
                            .add(const UserProfileEvent.initialized())
                      },
                  orElse: () => {});
              // state.maybeMap(
              //     loadSuccess: (s) {
              //       img.value = s.user.avatarUrl;
              //     },
              //     orElse: null);
            },
            builder: (context, state) {
              return state.maybeMap(
                  loadInProgress: (_) => const Center(
                        child: SpinKitFadingFour(
                          color: kPrimaryColor,
                        ),
                      ),
                  loadSuccess: (state) {
                    // img.value = state.user.avatarUrl;
                    return CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.grey[300],
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage:
                            CachedNetworkImageProvider(state.user.avatarUrl),
                        backgroundColor: Colors.grey[100],
                        onBackgroundImageError: (exception, stackTrace) {},
                      ),
                    );
                  },
                  orElse: () => Container());
            },
          )),
    );
  }
}

import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_share/post_share_bloc/post_share_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/infrastructure/posts/post_primitive_presentation.dart';
import 'package:phonesed/presentation/core/widgets/saving_overlay.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/detail_top_widget.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/related_posts_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/images_card.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:share/share.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:phonesed/extentions.dart';

import '../../../constants.dart';
import 'widgets/detail_bottom_widget.dart';

class PostDetailBody extends HookWidget {
  final Post post;
  const PostDetailBody({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loggedIn = useState(false);
    final userId = useState();
    return Scaffold(
      // backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          post.title.getOrCrash(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: kPrimaryDarkColor),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              context.read<PostShareBloc>().add(PostShareEvent.sharePostClicked(
                  post.id.getOrCrash(),
                  post.title.getOrCrash(),
                  post.description.value.getOrElse(() => 'Post from Phonesed'),
                  post.images.getOrCrash()[0].toString()));
            },
            // onPressed: () {
            // final RenderObject box = context.findRenderObject();
            // Share.share(text)
            // try {
            //   // Share.share('text');
            //   final f = File(post.images.getOrCrash()[0]);
            //   Share.shareFiles([f.path],
            //       text:
            //           '${post.images.getOrCrash()[0]} Checkout this device : ${post.device.getOrCrash()} | AED${post.price.getOrCrash()}',
            //       subject: 'sdfsdf');
            // } catch (e) {
            //   print(e);
            // }
            // },
          )
        ],
      ).withBottomAdmobBanner(context),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) => {},
            authenticated: (u) => {
              loggedIn.value = true,
              userId.value = u.userId,
              // print(u.userId),
              // ExtendedNavigator.of(context).pushChatPage(),
            },
            unauthenticated: (_) => {
              loggedIn.value = false,
              userId.value = null,
              // FlushbarHelper.createError(
              //         message: "You're not logged in, Please login")
              //     .show(context)
            },
          );
        },
        builder: (context, ssstate) {
          return SafeArea(
            child: ListView(
              children: [
                BlocBuilder<UserProfileBloc, UserProfileState>(
                  builder: (context, state) {
                    return Stack(
                      children: [
                        CardImagesCarousel(
                          images: post.images.getOrCrash(),
                          circularBorder: false,
                          height: 300,
                        ),
                        Positioned(
                          top: 13,
                          right: 13,
                          child: Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0x50000000),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 0),
                            child: state.maybeMap(
                                loadFailure: (f) => const Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white,
                                    ),
                                loadSuccess: (u) {
                                  return IconButton(
                                    onPressed: () => u.user.favorites.fold(
                                      () => null,
                                      (favs) {
                                        if (favs
                                            .getOrCrash()
                                            .contains(post.id)) {
                                          context.read<PostActorBloc>().add(
                                                PostActorEvent.unLiked(post),
                                              );
                                        } else {
                                          context.read<PostActorBloc>().add(
                                                PostActorEvent.liked(post),
                                              );
                                        }
                                      },
                                    ),
                                    iconSize: 20,
                                    icon: u.user.favorites.fold(
                                      () => const Icon(
                                        Icons.favorite_outline,
                                        color: Colors.white,
                                      ),
                                      (favs) => Icon(
                                        favs.getOrCrash().contains(post.id)
                                            ? Icons.favorite
                                            : Icons.favorite_outline,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                                orElse: () => Container()),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                DetailTopWidget(
                  post: post,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: kSecondaryLightColor,
                        foregroundColor: kSecondaryLightColor,
                        backgroundImage:
                            CachedNetworkImageProvider(post.userAvatar),
                        onBackgroundImageError: (exception, stackTrace) {
                          // print('opps!! :: $exception');
                        },
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.userName.getOrCrash(),
                            style: const TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            timeago.format(post.publishedDate.getOrCrash()),
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0x70000000),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                DetailBottomWidget(
                  model: post.device.getOrCrash(),
                  age: post.age.getOrCrash(),
                  condition: post.condition.getOrCrash(),
                  description: post.description.getOrCrash(),
                ),
                // Ad
                Column(
                  children: [
                    Container(
                      child: AdmobBanner(
                          adUnitId: getBannerAdUnitId(),
                          adSize: AdmobBannerSize.LARGE_BANNER),
                    ),
                  ],
                ),
                if (post.userId.getOrCrash() != userId.value) ...[
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    // width: double.infinity,
                    child: RaisedButton(
                      onPressed: loggedIn.value
                          ? () => ExtendedNavigator.of(context).pushChatPage(
                                postPrimitive: PostPrimitive.fromDomain(post)
                                    .copyWith(
                                        conversationId:
                                            '${post.id.getOrCrash()}+${post.userId.getOrCrash()}+${userId.value}'),
                                displayUserName: post.userName.getOrCrash(),
                                // conversation: null,
                              )
                          : null,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                      highlightElevation: 0,
                      color: kPrimaryColor,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.0),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Chat',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RelatedPostsWidget(
                    // key: ValueKey(post.id),
                    parentPost: post,
                  ),
                ] else ...[
                  BlocConsumer<PostActorBloc, PostActorState>(
                    listener: (context, state) {
                      state.maybeMap(
                          deleteSuccess: (_) {
                            ExtendedNavigator.of(context).popUntil((route) =>
                                route.settings.name == Routes.mainPage);
                          },
                          deleteFailure: (f) {
                            FlushbarHelper.createError(
                                    message: 'Unable to delete')
                                .show(context);
                          },
                          orElse: () {});
                    },
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 16),
                            // width: double.infinity,
                            child: RaisedButton(
                              onPressed: loggedIn.value
                                  ? () => ExtendedNavigator.of(context)
                                      .pushPostFormPage(editedPost: post)
                                  : null,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              highlightElevation: 0,
                              color: kPrimaryLightColor,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: kPrimaryDarkColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 16),
                            // width: double.infinity,
                            child: RaisedButton(
                              onPressed: () => context
                                  .read<PostActorBloc>()
                                  .add(PostActorEvent.delete(post)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              elevation: 0,
                              highlightElevation: 0,
                              color: const Color(0xffFF6C6C),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 1.0),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  )
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}

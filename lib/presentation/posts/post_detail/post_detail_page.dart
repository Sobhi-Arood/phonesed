import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/detail_bottom_widget.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/detail_top_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/images_card.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../injection.dart';

class PostDetailPage extends HookWidget {
  final Post post;
  const PostDetailPage({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final loggedIn = useState(false);
    final userId = useState();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(
          create: (context) => getIt<PostActorBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          title: Text(
            post.device,
            style: const TextStyle(color: kPrimaryDarkColor),
          ),
          actions: [
            IconButton(icon: const Icon(Icons.share), onPressed: () {})
          ],
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) => {},
              authenticated: (u) => {
                loggedIn.value = true,
                userId.value = u.userId,
                print(u.userId),
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
          builder: (context, state) {
            return SafeArea(
              child: ListView(
                children: [
                  CardImagesCarousel(
                    images: post.images.getOrCrash(),
                    circularBorder: false,
                    height: 300,
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
                          backgroundImage: NetworkImage(post.userAvatar),
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
                    age: post.age.getOrCrash(),
                    condition: post.condition.getOrCrash(),
                    description: post.description.getOrCrash(),
                  ),
                  if (post.userId.getOrCrash() != userId.value) ...[
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 16),
                      // width: double.infinity,
                      child: RaisedButton(
                        onPressed: loggedIn.value
                            ? () => ExtendedNavigator.of(context)
                                .pushChatPage(post: post)
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
                    )
                  ] else ...[
                    BlocConsumer<PostActorBloc, PostActorState>(
                      listener: (context, state) {
                        state.maybeMap(
                            initial: (_) => {},
                            deleteSuccess: (_) {
                              ExtendedNavigator.of(context).pop();
                            },
                            orElse: () {
                              FlushbarHelper.createError(
                                      message: 'Unable to delete')
                                  .show(context);
                            });
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
                                    .bloc<PostActorBloc>()
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
      ),
    );
  }
}

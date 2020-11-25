import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/core/user_profile/user_profile_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/images_card.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(8),
          // height: 280,
          child: Card(
            key: ValueKey(post.id),
            margin: const EdgeInsets.all(0),
            elevation: 0.1,
            color: Colors.white,
            child: InkWell(
              onTap: () =>
                  ExtendedNavigator.of(context).pushPostDetailPage(post: post),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CardImagesCarousel(
                          images: post.images.getOrCrash(),
                          circularBorder: true,
                          height: 200,
                        ),
                        Positioned(
                          top: 9,
                          right: 9,
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
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            post.title.getOrCrash(),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: kPrimaryDarkColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'AED ${post.price.getOrCrash()}',
                          style: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          post.brand.getOrCrash(),
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                        Wrap(
                          spacing: 2,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 14,
                              color: Colors.grey[700],
                            ),
                            Text(
                              post.city.getOrCrash(),
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              size: 16,
                              color: Colors.grey[700],
                            ),
                            Text(
                              post.area.getOrCrash(),
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    IntrinsicHeight(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          spacing: 15,
                          children: [
                            Text(
                              timeago.format(post.publishedDate.getOrCrash()),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 15,
                              child: const VerticalDivider(
                                color: Colors.grey,
                                thickness: 1.5,
                                width: 10,
                              ),
                            ),
                            Text(post.age.getOrCrash(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                )),
                            Container(
                              height: 15,
                              child: const VerticalDivider(
                                color: Colors.grey,
                                thickness: 1.5,
                                width: 10,
                              ),
                            ),
                            Text(
                              post.condition.getOrCrash(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            // const Text('55 min ago'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

import '../../../../constants.dart';
import 'images_card.dart';

class FavoritePostCard extends StatelessWidget {
  final Post post;
  const FavoritePostCard({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(8),
      // height: 280,
      child: Card(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        color: Colors.white,
        child: InkWell(
          onTap: () =>
              ExtendedNavigator.of(context).pushPostDetailPage(post: post),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 0,
                          ),
                          // color: const Color(0x50000000),
                          child: IconButton(
                            onPressed: () {
                              context
                                  .bloc<PostActorBloc>()
                                  .add(PostActorEvent.unLiked(post));
                              context.bloc<PostWatcherBloc>().add(
                                  const PostWatcherEvent
                                      .watchAllFavoritesStarted());
                            },
                            iconSize: 20,
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ))
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        elevation: 0.1,
        color: Colors.white,
        child: InkWell(
          onTap: () =>
              ExtendedNavigator.of(context).pushPostDetailPage(post: post),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 0,
                          ),
                          // color: const Color(0x50000000),
                          child: IconButton(
                            onPressed: () {
                              context
                                  .read<PostActorBloc>()
                                  .add(PostActorEvent.unLiked(post));
                              context.read<PostWatcherBloc>().add(
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
                Text(
                  post.title.getOrCrash(),
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline4,
                  // style: const TextStyle(
                  //   color: kPrimaryDarkColor,
                  //   fontSize: 24,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      post.brand.getOrCrash(),
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle1,
                      // style: const TextStyle(
                      //   fontSize: 15,
                      //   fontWeight: FontWeight.w600,
                      //   color: Colors.grey,
                      // ),
                    ),
                    Text(
                      'AED ${post.price.getOrCrash()}',
                      style: Theme.of(context).textTheme.headline5,
                      // style: const TextStyle(
                      //   color: kPrimaryColor,
                      //   fontSize: 20,
                      //   fontWeight: FontWeight.bold,
                      // ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

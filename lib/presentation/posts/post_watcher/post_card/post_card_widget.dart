import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/posts/post_actor/post_actor_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/images_card.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({Key key, @required this.post}) : super(key: key);
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
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CardImagesCarousel(
                      images: post.images.getOrCrash(),
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
                              horizontal: 3, vertical: 0),
                          // color: const Color(0x50000000),
                          child: IconButton(
                            onPressed: () => context.bloc<PostActorBloc>().add(
                                  PostActorEvent.liked(post),
                                ),
                            iconSize: 20,
                            icon: const Icon(
                              Icons.favorite_outline,
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
                const SizedBox(height: 16),
                IntrinsicHeight(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Wrap(
                      spacing: 15,
                      children: [
                        Text(timeago.format(post.publishedDate.getOrCrash())),
                        Container(
                          height: 15,
                          child: const VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 10,
                          ),
                        ),
                        Text(post.age.getOrCrash()),
                        Container(
                          height: 15,
                          child: const VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 10,
                          ),
                        ),
                        Text(post.condition.getOrCrash()),
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
  }
}

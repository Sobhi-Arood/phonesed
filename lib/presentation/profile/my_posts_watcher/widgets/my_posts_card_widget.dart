import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

class MyPostsCardWidget extends StatelessWidget {
  final Post post;
  const MyPostsCardWidget({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,
      margin: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () =>
            ExtendedNavigator.of(context).pushPostDetailPage(post: post),
        child: Container(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width * 0.3,
                child: CachedNetworkImage(
                    placeholder: (_, s) => Container(color: Colors.grey),
                    imageUrl: post.images.getOrCrash()[0]),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title.getOrCrash(),
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontSize: 18),
                      // style: const TextStyle(
                      //   color: kPrimaryDarkColor,
                      //   fontWeight: FontWeight.w700,
                      //   fontSize: 18,
                      // ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      timeago.format(post.publishedDate.getOrCrash()),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'AED ${post.price.getOrCrash()}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

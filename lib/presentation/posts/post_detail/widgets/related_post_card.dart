import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class RelatedPostCard extends StatelessWidget {
  final Post post;
  const RelatedPostCard({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 200,
      // color: Colors.white,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   border: Border.all(color: Colors.grey[200], width: 1.0),
      // ),
      margin: const EdgeInsets.only(right: 8),
      child: Card(
        key: ValueKey(post.id.getOrCrash()),
        elevation: 0.4,
        child: InkWell(
          onTap: () =>
              ExtendedNavigator.of(context).pushPostDetailPage(post: post),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: post.images.getOrCrash()[0],
                height: 160,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                post.title.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textScaleFactor: 1,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryDarkColor),
              ),
              const SizedBox(height: 8),
              Text(
                post.brand.getOrCrash(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textScaleFactor: 1,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryLightColor),
              ),
              const SizedBox(height: 8),
              Text(
                'AED ${post.price.getOrCrash()}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

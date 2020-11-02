import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/detail_bottom_widget.dart';
import 'package:phonesed/presentation/posts/post_detail/widgets/detail_top_widget.dart';
import 'package:phonesed/presentation/posts/post_watcher/post_card/images_card.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostDetailPage extends StatelessWidget {
  final Post post;
  const PostDetailPage({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SafeArea(
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
                  child: Row(children: [
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
                  ])),
              DetailBottomWidget(
                age: post.age.getOrCrash(),
                condition: post.condition.getOrCrash(),
                description: post.description.getOrCrash(),
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                // width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
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
            ],
          ),
        ));
  }
}

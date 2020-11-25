import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/infrastructure/posts/post_primitive_presentation.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationCard extends StatelessWidget {
  final Conversation conversation;
  final bool isMe;

  const ConversationCard({
    Key key,
    @required this.conversation,
    @required this.isMe,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 0.5,
      child: InkWell(
        onTap: () => ExtendedNavigator.of(context).pushChatPage(
          // conversation: conversation,
          postPrimitive: PostPrimitive(
            postId: conversation.postId,
            postTitle: conversation.postTitle.getOrCrash(),
            postImageUrl: conversation.postImage.getOrCrash(),
            postPublishedDate: conversation.publishedDate.getOrCrash(),
            postPrice: conversation.postPrice.getOrCrash(),
            postUserId: conversation.postUserId.getOrCrash(),
            postUsername: conversation.postUsername.getOrCrash(),
            postCity: conversation.postCity.getOrCrash(),
            conversationId: conversation.id.getOrCrash(),
          ),
          displayUserName: conversation.displayUserName.getOrCrash(),
        ),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: CachedNetworkImageProvider(
                      conversation.postImage.getOrCrash(),
                    ),
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          conversation.postTitle.getOrCrash(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          conversation.displayUserName.getOrCrash(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryDarkColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          conversation.recentMessageContent.getOrCrash(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        timeago.format(
                            conversation.recentMessageDate.getOrCrash()),
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

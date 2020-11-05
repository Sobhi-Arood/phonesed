import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/conversation.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationCard extends StatelessWidget {
  final Conversation conversation;
  final bool isMe;
  final String userName;

  const ConversationCard({
    Key key,
    @required this.conversation,
    @required this.isMe,
    @required this.userName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 0.5,
      child: InkWell(
        onTap: () => ExtendedNavigator.of(context).pushChatPage(post: null),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    CachedNetworkImageProvider(conversation.postImage),
                backgroundColor: Colors.amber,
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            conversation.postTitle.getOrCrash(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            userName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryDarkColor,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            conversation.recentMessageContent.getOrCrash(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          )
                        ]),
                  ),
                  Positioned(
                    top: 4,
                    right: 5,
                    child: Text(
                      timeago
                          .format(conversation.recentMessageDate.getOrCrash()),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
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

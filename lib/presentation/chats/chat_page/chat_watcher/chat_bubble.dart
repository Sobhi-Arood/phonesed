import 'package:flutter/material.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/message.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatBubble extends StatelessWidget {
  final Message message;
  final bool isMe;
  const ChatBubble({Key key, @required this.message, @required this.isMe})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        margin: const EdgeInsets.symmetric(vertical: 16),
        // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8),
        //   color: kPrimaryColor,
        // ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                  minWidth: 150,
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: isMe ? kPrimaryColor : kPrimaryLightColor,
              ),
              child: Text(
                message.content.getOrCrash(),
                style: TextStyle(
                  color: isMe ? Colors.white : kPrimaryDarkColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              timeago.format(message.date.getOrCrash()),
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.grey[600], fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}

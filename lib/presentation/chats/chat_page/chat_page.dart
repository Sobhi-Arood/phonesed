import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/chats/chat_form/chat_form_bloc.dart';
import 'package:phonesed/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:phonesed/infrastructure/posts/post_primitive_presentation.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_form/message_composer_widget.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_watcher/messages_list_view.dart';
import '../../../injection.dart';

class ChatPage extends StatelessWidget {
  final PostPrimitive postPrimitive;
  final String displayUserName;
  // final Conversation conversation;
  const ChatPage(
      {Key key, @required this.postPrimitive, @required this.displayUserName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print(postPrimitive.conversationId);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          // postPrimitive.postUsername,
          displayUserName,
          style: Theme.of(context).appBarTheme.textTheme.headline2,
          // style: const TextStyle(
          //   color: kPrimaryDarkColor,
          //   fontWeight: FontWeight.w700,
          // ),
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthBloc>()
              ..add(
                const AuthEvent.authCheckRequested(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<ChatWatcherBloc>()
              ..add(
                ChatWatcherEvent.watchAllStarted(postPrimitive.conversationId),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<ChatFormBloc>()
              ..add(
                ChatFormEvent.postPrimitiveChanged(postPrimitive),
              ),
          ),
        ],
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                if (MediaQuery.of(context).viewInsets.bottom == 0) ...[
                  Container(
                    constraints: const BoxConstraints(maxHeight: 140),
                    // height: MediaQuery.of(context).size.height * 0.12,
                    padding: const EdgeInsets.all(10),
                    color: kPrimaryLightColor,
                    child: ListTile(
                      // tileColor: Colors.grey,
                      leading: CircleAvatar(
                        radius: 50,
                        backgroundImage: CachedNetworkImageProvider(
                            postPrimitive.postImageUrl),
                      ),
                      title: Container(
                        constraints: const BoxConstraints(maxHeight: 90),
                        child: Text(
                          postPrimitive.postTitle,
                          textScaleFactor: 0.8,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                            color: kPrimaryDarkColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      subtitle:
                          Text(timeago.format(postPrimitive.postPublishedDate)),
                      trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AED ${postPrimitive.postPrice}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 18,
                                ),
                                Text(
                                  postPrimitive.postCity,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
                Expanded(
                  child: MessagesListView(),
                ),
                const Divider(),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return state.maybeMap(
                        authenticated: (u) => MessageComposerWidget(
                              userId: u.userId,
                            ),
                        orElse: () => Container());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

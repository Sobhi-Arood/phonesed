import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_watcher/chat_bubble.dart';

import '../../../../constants.dart';

class MessagesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWatcherBloc, ChatWatcherState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: SpinKitFadingFour(
                    color: kPrimaryColor,
                  ),
                ),
            loadSuccess: (messages) {
              // print(messages.messages);
              return BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                return state.maybeMap(
                    authenticated: (u) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: ListView.builder(
                          reverse: true,
                          itemCount: messages.messages.size,
                          itemBuilder: (context, index) {
                            final message = messages.messages[index];
                            final isMe =
                                message.senderId.getOrCrash() == u.userId;
                            if (message.failureOption.isSome()) {
                              return Container(
                                color: Colors.red,
                                child: Text(
                                  message.failureOption.fold(
                                    () => '',
                                    (a) => a.toString(),
                                  ),
                                ),
                              );
                            } else {
                              return ChatBubble(
                                message: message,
                                isMe: isMe,
                              );
                            }
                          },
                        ),
                      );
                    },
                    orElse: () => Container());
              });
            },
            loadFailure: (_) => const Center(child: Text('Error')));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/chats/conversations_watcher/conversations_watcher_bloc.dart';
import 'package:phonesed/presentation/chats/conversations_page/widgets/conversation_card.dart';

class ConversationsWatcherBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConversationsWatcherBloc, ConversationsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (cons) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: cons.conversations.size,
              itemBuilder: (context, index) {
                final con = cons.conversations[index];
                if (con != null) {
                  if (con.failureOption.isSome()) {
                    return Container(
                        child: Text(
                      con.failureOption.fold(() => '', (a) => a.toString()),
                    ));
                  } else {
                    return ConversationCard(
                      key: ValueKey(con.id.getOrCrash()),
                      conversation: con,
                      isMe: true,
                    );
                  }
                } else {
                  return Container();
                }
              },
            );
          },
          loadFailure: (f) {
            return Center(
              child: Text(
                f.messageFailure.map(
                    unableToSend: (_) => '',
                    unexpected: (_) => '',
                    insufficientPermission: (_) => '',
                    notLoggedIn: (_) => 'Please Log in'),
              ),
            );
          },
        );
      },
    );
  }
}

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
                  return ConversationCard(
                    conversation: con,
                    isMe: true,
                    userName: con.displayUserName.getOrCrash(),
                  );
                },
              );
            },
            loadFailure: (f) => Container(
                  child: Text(f.messageFailure.toString()),
                ));
      },
    );
  }
}

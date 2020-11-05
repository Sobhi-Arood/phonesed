import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/auth/auth_bloc/auth_bloc.dart';
import 'package:phonesed/application/chats/chat_form/chat_form_bloc.dart';
import 'package:phonesed/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:phonesed/domain/entities/post.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_form/message_composer_widget.dart';
import 'package:phonesed/presentation/chats/chat_page/chat_watcher/messages_list_view.dart';
import '../../../injection.dart';

class ChatPage extends StatelessWidget {
  final Post post;
  const ChatPage({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
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
                const ChatWatcherEvent.watchAllStarted(),
              ),
          ),
          BlocProvider(
            create: (context) => getIt<ChatFormBloc>()
              ..add(
                ChatFormEvent.postChanged(post),
              ),
          ),
        ],
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                Expanded(
                  child: MessagesListView(),
                ),
                const Divider(),
                const MessageComposerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

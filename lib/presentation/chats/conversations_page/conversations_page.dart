import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/chats/conversations_watcher/conversations_watcher_bloc.dart';
import 'package:phonesed/presentation/chats/conversations_page/conversations_watcher_body.dart';

import '../../../injection.dart';

class ConversationsPage extends StatelessWidget {
  const ConversationsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConversationsWatcherBloc>(
            create: (context) => getIt<ConversationsWatcherBloc>()
              ..add(const ConversationsWatcherEvent.watchAllStarted()))
      ],
      child: ConversationsWatcherBody(),
    );
  }
}

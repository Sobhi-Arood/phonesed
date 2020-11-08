import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/chats/chat_form/chat_form_bloc.dart';
import 'package:phonesed/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:phonesed/constants.dart';

class MessageComposerWidget extends HookWidget {
  final String userId;
  const MessageComposerWidget({Key key, @required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    final recevierId = useState('');
    return BlocConsumer<ChatWatcherBloc, ChatWatcherState>(
      listener: (context, state) {
        state.maybeMap(
            loadSuccess: (s) {
              // print('RECREC::::: ${s.messages[0].recevierId.getOrCrash()}');
              if (!s.messages.isEmpty()) {
                recevierId.value =
                    userId == s.messages[0].recevierId.getOrCrash()
                        ? s.messages[0].senderId.getOrCrash()
                        : s.messages[0].recevierId.getOrCrash();
                // print(s.messages[0].senderId.getOrCrash());
              }
            },
            orElse: () => {});
      },
      builder: (context, statee) {
        return BlocConsumer<ChatFormBloc, ChatFormState>(
          listenWhen: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            textEditingController.text = state.message.content.getOrCrash();
          },
          builder: (context, stateee) {
            // print(stateeee.message.recevierId.getOrCrash());
            return Form(
              // autovalidate: state.showErrorMessages,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: const InputDecoration(
                            hintText: 'Send a message ...'),
                        onChanged: (value) => context
                            .bloc<ChatFormBloc>()
                            .add(ChatFormEvent.contentChanged(value)),
                        validator: (_) => context
                            .bloc<ChatFormBloc>()
                            .state
                            .message
                            .content
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                      empty: (_) => 'Cannot be empty',
                                      orElse: () => '',
                                    ),
                                (_) => null),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: textEditingController.text.isNotEmpty
                            ? kPrimaryColor
                            : Colors.grey,
                      ),
                      child: BlocBuilder<ChatWatcherBloc, ChatWatcherState>(
                        builder: (context, state) {
                          return state.maybeMap(
                              loadSuccess: (s) {
                                // print(s.messages[0].recevierId.getOrCrash());
                                // print(s.messages[0].senderId.getOrCrash());
                                return IconButton(
                                    color: Colors.white,
                                    icon: const Icon(
                                      Icons.send,
                                    ),
                                    onPressed: textEditingController
                                            .text.isNotEmpty
                                        ? () {
                                            if (s.messages.isEmpty()) {
                                              context.bloc<ChatFormBloc>().add(
                                                    ChatFormEvent.sended(stateee
                                                        .postPrimitive
                                                        .postUserId),
                                                  );
                                            } else {
                                              if (userId ==
                                                  s.messages[0].recevierId
                                                      .getOrCrash()) {
                                                context
                                                    .bloc<ChatFormBloc>()
                                                    .add(ChatFormEvent.sended(s
                                                        .messages[0].senderId
                                                        .getOrCrash()));
                                              } else {
                                                context
                                                    .bloc<ChatFormBloc>()
                                                    .add(ChatFormEvent.sended(s
                                                        .messages[0].recevierId
                                                        .getOrCrash()));
                                              }
                                            }
                                            // if (recevierId.value.isEmpty) {
                                            //   context.bloc<ChatFormBloc>().add(
                                            //       ChatFormEvent.sended(state
                                            //           .postPrimitive
                                            //           .postUserId));
                                            // } else {
                                            //   context.bloc<ChatFormBloc>().add(
                                            //       ChatFormEvent.sended(
                                            //           recevierId.value));
                                            // }
                                            textEditingController.text = '';
                                          }
                                        : null);
                              },
                              orElse: () => Container());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

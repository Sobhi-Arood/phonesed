import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phonesed/application/chats/chat_form/chat_form_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/post.dart';

class MessageComposerWidget extends HookWidget {
  // final Post post;
  const MessageComposerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocBuilder<ChatFormBloc, ChatFormState>(builder: (context, state) {
      return Form(
        // autovalidate: state.showErrorMessages,
        child: BlocListener<ChatFormBloc, ChatFormState>(
            listenWhen: (p, c) => p.isEditing != c.isEditing,
            listener: (context, state) {
              textEditingController.text = state.message.content.getOrCrash();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 70,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: textEditingController,
                      decoration:
                          const InputDecoration(hintText: 'Send a message ...'),
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
                    child: IconButton(
                        color: Colors.white,
                        icon: const Icon(
                          Icons.send,
                        ),
                        onPressed: textEditingController.text.isNotEmpty
                            ? () {
                                context
                                    .bloc<ChatFormBloc>()
                                    .add(const ChatFormEvent.sended());
                                textEditingController.text = '';
                              }
                            : null),
                  ),
                ],
              ),
            )),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MessageWidget extends StatelessWidget {
  final String text;
  final bool isFromUser;

  const MessageWidget(
      {super.key, required this.text, required this.isFromUser});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25
          ),
          margin: const EdgeInsets.all(8.0),
          constraints: const BoxConstraints(maxWidth: 520),
          decoration: BoxDecoration(
              color: isFromUser
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(18.0)),
          child: Column(
            children: [
              // flutter pub add flutter_markdown
              MarkdownBody(data: text)
            ],
          ),
        ))
      ],
    );
  }
}

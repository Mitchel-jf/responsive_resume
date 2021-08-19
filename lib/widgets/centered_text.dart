import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final provider;
  const CText(this.text, {this.style, this.provider, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, watch, __) {
        String liveText = '';
        if (provider != null) liveText = watch(provider).text;
        return Text(
          liveText.isEmpty ? text : liveText,
          style: style,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}

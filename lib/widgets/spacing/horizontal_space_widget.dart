import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double? width;
  const HorizontalSpace({this.width = 12});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

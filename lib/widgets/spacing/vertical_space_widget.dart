import 'package:flutter/material.dart';

class VeriticalSpace extends StatelessWidget {
  final double? height;
  const VeriticalSpace({this.height = 16});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
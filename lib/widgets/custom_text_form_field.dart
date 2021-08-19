import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CTextFormField extends StatelessWidget {
  final String labelText;
  final ChangeNotifierProvider<TextEditingController> provider;

  const CTextFormField(this.labelText,this.provider, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<TextEditingController>(provider),
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}

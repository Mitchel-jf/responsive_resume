import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormModel {
  final String labelText;
  final ChangeNotifierProvider<TextEditingController> provider;

  const FormModel(this.labelText, this.provider);
}
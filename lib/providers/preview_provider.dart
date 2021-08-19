import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final previewProvider = PreviewProvider();

class PreviewProvider extends ChangeNotifier {
  // bio
  final nameCtrl = ChangeNotifierProvider((ref) => TextEditingController());
  final emailCtrl = ChangeNotifierProvider((ref) => TextEditingController());
  final phoneCtrl = ChangeNotifierProvider((ref) => TextEditingController());

  // objective
  final objectiveBodyCtrl =
      ChangeNotifierProvider((ref) => TextEditingController());

  // education
  final schoolNameCtrl =
      ChangeNotifierProvider((ref) => TextEditingController());
  final degreeCtrl = ChangeNotifierProvider((ref) => TextEditingController());
  final jobTitleCtrl = ChangeNotifierProvider((ref) => TextEditingController());
  final remoteCtrl = ChangeNotifierProvider((ref) => TextEditingController());

  //awards
  final awardsCtrl = ChangeNotifierProvider((ref) => TextEditingController());
}

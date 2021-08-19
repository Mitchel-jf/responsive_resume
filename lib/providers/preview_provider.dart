import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screenshot/screenshot.dart';

final previewProvider = PreviewProvider();
final pp = ChangeNotifierProvider((ref) => PreviewProvider());
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

  ScreenshotController screenshotController = ScreenshotController();
  void download() {
    screenshotController.capture().then((Uint8List? value) {
      final _base64 = base64Encode(value!);
      final anchor =
          AnchorElement(href: 'data:application/octet-stream;base64,$_base64')
            ..download = "image.png"
            ..target = 'blank';

      document.body!.append(anchor);
      anchor.click();
      anchor.remove();
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final mobileViewProvider =
    ChangeNotifierProvider((ref) => MobileViewProvider());

class MobileViewProvider extends ChangeNotifier {
  bool isForm = true;
  double opacity = 0.0;
  

  void onFABPressed() {
    isForm = !isForm;
    opacity = isForm ? 0.0 : 1.0;
    notifyListeners();
  }

  
}

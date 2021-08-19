import 'package:flutter/material.dart';
import 'package:responsive_resume/modules/form/ui/mobile/mobile_view.dart';
import 'package:responsive_resume/views/desktop_view.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 700 ? DesktopView() : MobileView();
  }
}

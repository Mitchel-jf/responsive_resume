import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/form_desktop.dart';
import 'mobile/mobile_view.dart';
import 'mobile/form_m_landscape.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (_) => MobileView(),
        landscape: (_) => FormMobileLandscapePage(),
      ),
      tablet: (_) => OrientationLayoutBuilder(
        portrait: (_) => MobileView(),
        landscape: (_) => FormMobileLandscapePage(),
      ),
      desktop: (_) => FormDesktopPage(),
    );
  }
}

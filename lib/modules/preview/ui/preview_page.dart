import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_resume/modules/form/ui/form_page.dart';

import '../../../views/desktop_view.dart';
import 'mobile/preview_m_portrait.dart';
import 'mobile/preview_m_landscape.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  double width = MediaQuery.of(context).size.width;
  //   return width >= 700 ? PreviewDesktopPage() : FormPage();
    return ScreenTypeLayout.builder(
      mobile: (_) => OrientationLayoutBuilder(
        portrait: (_) => PreviewMobilePortraitPage(),
        landscape: (_) => PreviewMobileLandscapePage(),
      ),
      tablet: (_) => OrientationLayoutBuilder(
        portrait: (_) => PreviewMobilePortraitPage(),
        landscape: (_) => PreviewMobilePortraitPage(),
      ),
      desktop: (_) => DesktopView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';

import '../centered_text.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CText(
          'Education',
          style: CustomTextTheme.heading,
        ),
        CText(
          '[School Name]',
          style: CustomTextTheme.body,
          provider: previewProvider.schoolNameCtrl,
        ),
        CText(
          '[Degree]',
          style: CustomTextTheme.body,
          provider: previewProvider.degreeCtrl,
        ),
      ],
    );
  }
}

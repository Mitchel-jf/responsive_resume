import 'package:flutter/material.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';

import '../centered_text.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CText(
          'Experience',
          style: CustomTextTheme.heading,
        ),
        CText('August - October, 2021', style: CustomTextTheme.body),
        CText(
          '[Node.js Intern]',
          style: CustomTextTheme.body,
          provider: previewProvider.jobTitleCtrl,
        ),
        CText('HNG', style: CustomTextTheme.body),
        CText('Remote', style: CustomTextTheme.body),
      ],
    );
  }
}

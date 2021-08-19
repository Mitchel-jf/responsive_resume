import 'package:flutter/material.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';

import '../centered_text.dart';

class ObjectiveWidget extends StatelessWidget {
  const ObjectiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CText('Objective', style: CustomTextTheme.heading),
        CText(
          '[Objective body]',
          style: CustomTextTheme.body,
          provider: previewProvider.objectiveBodyCtrl,
        ),
      ],
    );
  }
}

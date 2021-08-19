import 'package:flutter/material.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';

import '../centered_text.dart';

class AwardsWidget extends StatelessWidget {
  const AwardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CText(
          'Awards & Acknowledgements',
          style: CustomTextTheme.heading,
        ),
        CText(
          '[this body]',
          style: CustomTextTheme.body,
          provider: previewProvider.awardsCtrl,
        ),
      ],
    );
  }
}

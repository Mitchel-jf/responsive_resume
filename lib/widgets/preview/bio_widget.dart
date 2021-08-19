import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';

import '../centered_text.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(
          builder: (_, watch, __) => CText(
            '[Your Name]',
            style: CustomTextTheme.large,
            provider: previewProvider.nameCtrl,
          ),
        ),
        CText(
          '[email]',
          style: CustomTextTheme.body,
          provider: previewProvider.emailCtrl,
        ),
        CText(
          '[Phone]',
          style: CustomTextTheme.body,
          provider: previewProvider.phoneCtrl,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_resume/config/themes/custom_text_theme.dart';
import 'package:responsive_resume/providers/preview_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_resume/widgets/spacing/horizontal_space_widget.dart';

import '../centered_text.dart';

class AwardsWidget extends StatelessWidget {
  const AwardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CText(
          'Powered by',
          style: CustomTextTheme.heading,
        ),
        HorizontalSpace(),
        Wrap(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/logo.png', scale: 2),
          ],
        ),
        TextButton(
          onPressed: context.read(pp).openZuriWebsite,
          child: Text('internship.zuri.team'),
        )
      ],
    );
  }
}

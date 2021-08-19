import 'package:flutter/material.dart';
import 'package:responsive_resume/providers/form_provider.dart';
import 'package:responsive_resume/widgets/spacing/vertical_space_widget.dart';

import '../custom_text_form_field.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: formProvider.forms.map<Widget>((m) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CTextFormField(m.labelText, m.provider),
                VeriticalSpace(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

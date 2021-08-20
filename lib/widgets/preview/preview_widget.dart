import 'package:flutter/material.dart';
import 'package:responsive_resume/providers/preview_provider.dart';
import 'package:responsive_resume/widgets/preview/powered_by_widget.dart';
import 'package:responsive_resume/widgets/preview/bio_widget.dart';
import 'package:responsive_resume/widgets/preview/education_widget.dart';
import 'package:responsive_resume/widgets/preview/experience_widget.dart';
import 'package:responsive_resume/widgets/preview/objective_widget.dart';
import 'package:responsive_resume/widgets/spacing/vertical_space_widget.dart';
import 'package:screenshot/screenshot.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Screenshot(
        controller: context.read(pp).screenshotController,
        child: Container(
          color: Theme.of(context).canvasColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BioWidget(),
                VeriticalSpace(),
                ObjectiveWidget(),
                VeriticalSpace(),
                EducationWidget(),
                VeriticalSpace(),
                ExperienceWidget(),
                VeriticalSpace(),
                AwardsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

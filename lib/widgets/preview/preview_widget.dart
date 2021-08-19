import 'package:flutter/material.dart';
import 'package:responsive_resume/widgets/preview/awards_widget.dart';
import 'package:responsive_resume/widgets/preview/bio_widget.dart';
import 'package:responsive_resume/widgets/preview/education_widget.dart';
import 'package:responsive_resume/widgets/preview/experience_widget.dart';
import 'package:responsive_resume/widgets/preview/objective_widget.dart';
import 'package:responsive_resume/widgets/spacing/vertical_space_widget.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
    );
  }
}

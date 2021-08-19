import 'package:responsive_resume/models/form_model.dart';

import 'preview_provider.dart';

final formProvider = FormProvider();

class FormProvider {
  List<FormModel> forms = [
    FormModel('Full name', previewProvider.nameCtrl),
    FormModel('Email', previewProvider.emailCtrl),
    FormModel('Phone', previewProvider.phoneCtrl),
    FormModel('Your Objective', previewProvider.objectiveBodyCtrl),
    FormModel('School Name', previewProvider.schoolNameCtrl),
    FormModel('Degree', previewProvider.degreeCtrl),
    FormModel('Track/Course @ HNG', previewProvider.jobTitleCtrl),
    FormModel('Awards', previewProvider.awardsCtrl),
  ];
}

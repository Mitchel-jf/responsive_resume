import 'package:flutter/material.dart';
import 'package:responsive_resume/widgets/form/form_widget.dart';

class MobileView extends StatelessWidget {
  const MobileView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Form Mobile + Tablet ${MediaQuery.of(context).size.width}'),
      ),
      body: FormWidget(),
    );
  }
}
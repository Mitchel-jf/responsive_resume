import 'package:flutter/material.dart';
import 'package:responsive_resume/widgets/preview/preview_widget.dart';

class PreviewMobilePortraitPage extends StatelessWidget {
  const PreviewMobilePortraitPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Preview Mobile + Tablet ${MediaQuery.of(context).size.width}'),
      ),
      body: PreviewWidget(),
    );
  }
}
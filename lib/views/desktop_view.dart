import 'package:flutter/material.dart';
import 'package:responsive_resume/widgets/form/form_widget.dart';
import 'package:responsive_resume/widgets/preview/preview_widget.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Preview Web ${MediaQuery.of(context).size.width}'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: FormWidget()),
          VerticalDivider(),
          Expanded(child: PreviewWidget())
        ],
      ),
    );
  }
}

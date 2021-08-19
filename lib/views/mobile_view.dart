import 'package:flutter/material.dart';
import 'package:responsive_resume/providers/mobile_view_provider.dart';
import 'package:responsive_resume/providers/preview_provider.dart';
import 'package:responsive_resume/widgets/form/form_widget.dart';
import 'package:responsive_resume/widgets/preview/preview_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_resume/widgets/spacing/horizontal_space_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Form Mobile/Tablet ${MediaQuery.of(context).size.width}'),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Consumer(
            builder: (_, watch, __) {
              double opacity = watch(mobileViewProvider).opacity;
              return AnimatedOpacity(
              opacity: opacity,
              duration: Duration(milliseconds: 500),
              child: FloatingActionButton(
                child: Icon(Icons.download),
                onPressed: context.read(pp).download
              ),
            );
            },
          ),
          HorizontalSpace(),
          FloatingActionButton(
            child: Icon(Icons.remove_red_eye),
            onPressed: context.read(mobileViewProvider).onFABPressed,
          ),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Consumer(
          builder: (_, watch, __) {
            bool isForm = watch(mobileViewProvider).isForm;
            return AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: isForm
                  ? FormWidget()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [PreviewWidget()]),
            );
          },
        ),
      ),
    );
  }
}

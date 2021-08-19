import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart' as sizer;
import 'widgets/home_widget.dart';

void main() {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    ScreenBreakpoints(desktop: 700, tablet: 400, watch: 200),
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return sizer.Sizer(
      builder: (context, orientation, deviceyType) => MaterialApp(
        title: 'Responsive Resume Builder for HNG',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light, 
          primarySwatch: Colors.blue,
        ),
        home: HomeWidget()
      ),
    );
  }
}

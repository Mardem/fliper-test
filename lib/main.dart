import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(
          context,
        ).textTheme.apply(
              bodyColor: DefaultColors.defaultGrey,
              displayColor: DefaultColors.defaultGrey,
            ),
      ),
      home: ResumeScreen(),
    );
  }
}

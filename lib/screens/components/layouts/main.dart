import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget? body;

  const MainLayout({
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.backgroundColor,
      body: body,
    );
  }
}

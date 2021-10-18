import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';

class AppButtonOutline extends StatelessWidget {
  final GestureTapCallback onPressed;
  final Widget child;

  const AppButtonOutline({this.onPressed, this.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: child,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(2),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: DefaultColors.defaultBlue,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}

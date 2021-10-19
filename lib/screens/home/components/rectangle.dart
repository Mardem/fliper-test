import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RectangleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      right: 30,
      width: 20,
      child: AppDownAnimation(
        endPosition: 0.03,
        child: SvgPicture.asset(
          'src/img/home/rectangle.svg',
          semanticsLabel: 'Rectangle',
        ),
      ),
    );
  }
}

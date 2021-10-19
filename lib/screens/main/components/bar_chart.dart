import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarChartStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      height: size.width * .2,
      top: 340,
      right: -50,
      child: AppDownAnimation(
        endPosition: 0.2,
        duration: 4,
        child: SvgPicture.asset(
          'src/img/home/front_chart.svg',
          semanticsLabel: 'Bar chart',
        ),
      ),
    );
  }
}

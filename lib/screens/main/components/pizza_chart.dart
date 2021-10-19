import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PizzaChartStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      width: size.width,
      height: size.width * .13,
      top: 380,
      left: -80,
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/pizza_chart.svg',
          semanticsLabel: 'Pizza chart',
        ),
      ),
    );
  }
}

import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PizzaChartStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenWidth * .13,
      top: ScreenUtil().setWidth(380),
      left: ScreenUtil().setWidth(-80),
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/pizza_chart.svg',
          semanticsLabel: 'Pizza chart',
        ),
      ),
    );
  }
}

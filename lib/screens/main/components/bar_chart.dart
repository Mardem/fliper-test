import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarChartStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: ScreenUtil().setHeight(120),
      bottom: ScreenUtil().setWidth(15),
      right: ScreenUtil().setWidth(-50),
      child: AppDownAnimation(
        endPosition: ScreenUtil().setWidth(0.2),
        duration: 4,
        child: SvgPicture.asset(
          'src/img/home/front_chart.svg',
          semanticsLabel: 'Bar chart',
        ),
      ),
    );
  }
}

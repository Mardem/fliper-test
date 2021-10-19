import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RectangleStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ScreenUtil().setWidth(30),
      right: ScreenUtil().setWidth(30),
      width: ScreenUtil().setWidth(20),
      child: AppDownAnimation(
        endPosition: ScreenUtil().setWidth(0.03),
        child: SvgPicture.asset(
          'src/img/home/rectangle.svg',
          semanticsLabel: 'Rectangle',
        ),
      ),
    );
  }
}

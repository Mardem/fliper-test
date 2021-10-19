import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: ScreenUtil().setWidth(50),
      top: ScreenUtil().setWidth(150),
      left: ScreenUtil().setWidth(-15),
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/message.svg',
          semanticsLabel: 'Message',
        ),
      ),
    );
  }
}

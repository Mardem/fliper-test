import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBannerStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenWidth * .8,
      top: ScreenUtil().setWidth(100),
      child: SvgPicture.asset(
        'src/img/home/welcome_icon.svg',
        semanticsLabel: 'Welcome Banner',
      ),
    );
  }
}

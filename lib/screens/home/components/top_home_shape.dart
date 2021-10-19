import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopHomeShape extends StatelessWidget {
  const TopHomeShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ScreenUtil().setWidth(-200),
      right: ScreenUtil().setWidth(-100),
      height: ScreenUtil().setHeight(530),
      child: SvgPicture.asset(
        'src/img/home/shape_top_v2.svg',
        semanticsLabel: 'Shape top',
      ),
    );
  }
}

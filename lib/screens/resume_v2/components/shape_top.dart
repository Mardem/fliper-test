import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResumeShapeTopStack extends StatelessWidget {
  const ResumeShapeTopStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ScreenUtil().setWidth(-300),
      right: ScreenUtil().setWidth(-100),
      height: ScreenUtil().setHeight(730),
      child: SvgPicture.asset(
        'src/img/home/shape_top.svg',
        semanticsLabel: 'Shape top',
      ),
    );
  }
}

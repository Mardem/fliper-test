import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResumeShapeBottomStack extends StatelessWidget {
  const ResumeShapeBottomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenUtil().setWidth(-350),
      left: ScreenUtil().setWidth(-100),
      height: ScreenUtil().setHeight(730),
      child: SvgPicture.asset(
        'src/img/home/shape_top.svg',
        semanticsLabel: 'Shape top',
      ),
    );
  }
}

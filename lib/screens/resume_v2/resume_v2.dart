import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResumeScreenV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: Platform.isAndroid ? 20 : 0),
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: ScreenUtil().setWidth(-300),
              right: ScreenUtil().setWidth(-100),
              height: ScreenUtil().setHeight(730),
              child: SvgPicture.asset(
                'src/img/home/shape_top.svg',
                semanticsLabel: 'Shape top',
              ),
            )
          ],
        ),
      ),
    );
  }
}

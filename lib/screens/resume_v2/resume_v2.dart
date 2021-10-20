import 'dart:io';

import 'package:fliper/screens/resume_v2/components/resume_grid.dart';
import 'package:fliper/screens/resume_v2/components/shape_bottom.dart';
import 'package:fliper/screens/resume_v2/components/shape_top.dart';
import 'package:fliper/screens/resume_v2/components/top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResumeScreenV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: Platform.isAndroid ? 20 : 0),
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
            ResumeShapeTopStack(),
            ResumeShapeBottomStack(),
            ResumeTopBarStack(),
            Positioned(
              top: ScreenUtil().setWidth(100),
              height: ScreenUtil().screenHeight * .8,
              width: ScreenUtil().screenWidth,
              child: ResumeGridDetail(),
            )
          ],
        ),
      ),
    );
  }
}

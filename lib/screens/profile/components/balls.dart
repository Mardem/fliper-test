import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileBalls {
  static List leftBalls() {
    return [
      Positioned(
        width: ScreenUtil().setHeight(15),
        height: ScreenUtil().setWidth(15),
        right: ScreenUtil().setWidth(80),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(7),
        height: ScreenUtil().setWidth(7),
        right: ScreenUtil().setWidth(30),
        top: ScreenUtil().setWidth(70),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.accentBlue,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(17),
        height: ScreenUtil().setWidth(17),
        right: ScreenUtil().setWidth(30),
        top: ScreenUtil().setWidth(80),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.defaultBlue.withOpacity(.8),
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(5),
        height: ScreenUtil().setWidth(5),
        right: ScreenUtil().setWidth(80),
        top: ScreenUtil().setWidth(60),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.defaultBlue,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(15),
        height: ScreenUtil().setWidth(15),
        right: ScreenUtil().setWidth(80),
        top: ScreenUtil().setWidth(120),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.defaultBlue.withOpacity(.3),
          ),
        ),
      ),
    ];
  }

  static List rightBalls() {
    return [
      Positioned(
        width: ScreenUtil().setHeight(10),
        height: ScreenUtil().setWidth(10),
        left: ScreenUtil().setWidth(80),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.accentBlue,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(15),
        height: ScreenUtil().setWidth(15),
        left: ScreenUtil().setWidth(30),
        top: ScreenUtil().setWidth(60),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.defaultBlue,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(5),
        height: ScreenUtil().setWidth(5),
        left: ScreenUtil().setWidth(80),
        top: ScreenUtil().setWidth(60),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
        ),
      ),
      Positioned(
        width: ScreenUtil().setHeight(15),
        height: ScreenUtil().setWidth(15),
        left: ScreenUtil().setWidth(80),
        top: ScreenUtil().setWidth(120),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DefaultColors.accentBlue,
          ),
        ),
      ),
    ];
  }
}

import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/main/components/shape_bottom.dart';
import 'package:fliper/screens/main/components/shape_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ShapeTopStack(),
          ShapeBottomStack(),
          Positioned(
            height: ScreenUtil().setHeight(200),
            width: ScreenUtil().screenWidth,
            top: ScreenUtil().setHeight(100),
            child: Container(
              color: Colors.black.withOpacity(.3),
              child: Stack(
                children: [
                  Positioned(
                    width: ScreenUtil().screenWidth / 2,
                    height: ScreenUtil().setHeight(100),
                    left: ScreenUtil().screenWidth / 4,
                    top: ScreenUtil().setWidth(40),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: DefaultColors.defaultBlue.withOpacity(.4),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    width: ScreenUtil().setHeight(25),
                    height: ScreenUtil().setWidth(25),
                    right: ScreenUtil().setWidth(80),
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
                    right: ScreenUtil().setWidth(80),
                    top: ScreenUtil().setWidth(30),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

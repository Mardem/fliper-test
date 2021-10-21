import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/profile/components/balls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            width: ScreenUtil().screenWidth / 2,
            height: ScreenUtil().setHeight(130),
            left: ScreenUtil().screenWidth / 4,
            top: ScreenUtil().setWidth(20),
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
                  image: DecorationImage(
                    image: Image.network(
                            'https://thispersondoesnotexist.com/image')
                        .image,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          ...ProfileBalls.leftBalls(),
          ...ProfileBalls.rightBalls(),
          Positioned(
            bottom: 10,
            width: ScreenUtil().screenWidth,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Marden Cavalcante',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                      wordSpacing: 5,
                    ),
                  ),
                  Text(
                    'main@marden.dev',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      wordSpacing: 5,
                      color: DefaultColors.defaultGrey,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

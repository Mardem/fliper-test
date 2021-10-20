import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class ResumeTopBarStack extends StatelessWidget {
  const ResumeTopBarStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: ScreenUtil().screenWidth,
      top: ScreenUtil().setWidth(50),
      left: 20,
      child: Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(LineIcons.angleLeft),
              onPressed: () => Get.back(),
            ),
            Text(
              'Seu resumo',
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

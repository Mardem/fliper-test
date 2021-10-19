import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class LastGainsTextHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: ScreenUtil().setWidth(30),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Últimos Rendimentos',
              style: GoogleFonts.montserrat(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(
                LineIcons.angleRight,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

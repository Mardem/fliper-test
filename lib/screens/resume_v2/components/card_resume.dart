import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardResume extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final double? fontSizeSubtitle;

  const CardResume({this.title, this.subtitle, this.fontSizeSubtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration(),
      height: 40,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title ?? '...',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              color: DefaultColors.defaultBlue,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle ?? '...',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: fontSizeSubtitle ?? 20.sp,
              fontWeight: FontWeight.bold,
              color: DefaultColors.defaultBlue,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.1),
          blurRadius: 20,
        )
      ],
    );
  }
}

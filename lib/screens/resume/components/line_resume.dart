import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LineResume extends StatelessWidget {
  final String leftText;
  final rightValue;

  const LineResume({
    Key? key,
    required this.leftText,
    required this.rightValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setWidth(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: Color.fromRGBO(52, 57, 71, 1.0),
            ),
          ),
          Text(
            rightValue ?? '...',
            style: GoogleFonts.montserrat(
              fontSize: 19.sp,
              fontWeight: FontWeight.bold,
              color: DefaultColors.defaultBlue,
            ),
          ),
        ],
      ),
    );
  }
}

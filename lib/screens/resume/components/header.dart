import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class ResumeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Seu resumo',
            style: GoogleFonts.montserrat(
              color: DefaultColors.defaultBlue,
              fontWeight: FontWeight.w700,
              fontSize: 23.sp,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Icon(
              LineIcons.verticalEllipsis,
              color: Color.fromRGBO(154, 163, 188, 1.0),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class ResumeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Expanded(
          child: Text(
            'Seu resumo',
            style: GoogleFonts.montserrat(
              color: DefaultColors.defaultBlue,
              fontWeight: FontWeight.w700,
              fontSize: size.width * .05,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Icon(LineIcons.verticalEllipsis),
          ),
        )
      ],
    );
  }
}

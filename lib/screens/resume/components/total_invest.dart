import 'package:fliper/config/colors/default.dart';
import 'package:fliper/config/helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeTotalInvest extends StatelessWidget {
  final double total;

  const ResumeTotalInvest({
    @required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Text(
      AppHelpers.formatCurrency(total ?? 0),
      style: GoogleFonts.montserrat(
        fontSize: size.width * .055,
        fontWeight: FontWeight.bold,
        color: DefaultColors.defaultBlue,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionHomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 106,
      width: size.width,
      child: Container(
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Preparado para ter suas finanças e investimentos na palma da mão?',
          style: GoogleFonts.openSans(
            fontSize: size.width * .039,
            color: Color.fromRGBO(64, 61, 61, 1.0),
          ),
        ),
      ),
    );
  }
}

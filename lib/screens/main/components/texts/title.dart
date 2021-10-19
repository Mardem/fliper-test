import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHomeStack extends StatelessWidget {
  const TitleHomeStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 160,
      left: -15,
      width: size.width,
      child: Container(
        child: Column(
          children: [
            Text(
              'Administre seus investimentos \nem alguns cliques',
              style: GoogleFonts.openSans(
                fontSize: size.width * .05,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(64, 61, 61, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

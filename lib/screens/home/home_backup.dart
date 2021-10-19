import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/home/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenBackup extends StatelessWidget {
  const HomeScreenBackup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            Positioned(child: TopBar(), height: 170, top: 0),
            Positioned(
              top: 255,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                width: size.width,
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Últimas transações',
                      style: GoogleFonts.montserrat(
                        fontSize: size.width * .04,
                        fontWeight: FontWeight.w700,
                        color: DefaultColors.defaultPurple,
                      ),
                    ),
                    Container(
                      height: size.height * .62,
                      child: ListView(
                        children: [],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

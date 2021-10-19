import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:fliper/screens/components/ui/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color.fromRGBO(249, 249, 252, 1.0),
        child: Stack(
          children: [
            Positioned(
              top: -200,
              left: -200,
              child: SvgPicture.asset(
                'src/img/home/shape_top.svg',
                semanticsLabel: 'Shape top',
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              width: 20,
              child: AppDownAnimation(
                endPosition: 0.03,
                child: SvgPicture.asset(
                  'src/img/home/rectangle.svg',
                  semanticsLabel: 'Shape top',
                ),
              ),
            ),
            Positioned(
              height: size.width * .13,
              top: 150,
              left: -15,
              child: AppDownAnimation(
                child: SvgPicture.asset(
                  'src/img/home/message.svg',
                  semanticsLabel: 'Shape top',
                ),
              ),
            ),
            Positioned(
              width: size.width,
              height: size.width * .8,
              top: 100,
              child: SvgPicture.asset(
                'src/img/home/welcome_icon.svg',
                semanticsLabel: 'Welcome Banner',
              ),
            ),
            Positioned(
              width: size.width,
              height: size.width * .13,
              top: 380,
              left: -80,
              child: AppDownAnimation(
                child: SvgPicture.asset(
                  'src/img/home/pizza_chart.svg',
                  semanticsLabel: 'Pizza chart',
                ),
              ),
            ),
            Positioned(
              height: size.width * .2,
              top: 340,
              right: -50,
              child: AppDownAnimation(
                endPosition: 0.3,
                child: SvgPicture.asset(
                  'src/img/home/front_chart.svg',
                  semanticsLabel: 'Bar chart',
                ),
              ),
            ),
            Positioned(
              bottom: 150,
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
            ),
            Positioned(
              bottom: 96,
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
            ),
            Positioned(
              bottom: -100,
              right: -250,
              child: RotationTransition(
                turns: new AlwaysStoppedAnimation(-20 / 560),
                child: SvgPicture.asset(
                  'src/img/shape_bottom.svg',
                  semanticsLabel: 'Welcome Banner',
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                child: AppButton(
                  backgroundColor: DefaultColors.defaultBlue,
                  elevation: 0,
                  child: Text(
                    'Iniciar experiência',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () => print('vamos'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

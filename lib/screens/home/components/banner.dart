import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBannerStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      width: size.width,
      height: size.width * .8,
      top: 100,
      child: SvgPicture.asset(
        'src/img/home/welcome_icon.svg',
        semanticsLabel: 'Welcome Banner',
      ),
    );
  }
}

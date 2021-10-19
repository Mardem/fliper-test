import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShapeTopStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -200,
      left: -200,
      child: SvgPicture.asset(
        'src/img/home/shape_top.svg',
        semanticsLabel: 'Shape top',
      ),
    );
  }
}

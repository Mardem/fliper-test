import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShapeBottomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -100,
      right: -250,
      child: RotationTransition(
        turns: new AlwaysStoppedAnimation(-20 / 560),
        child: SvgPicture.asset(
          'src/img/shape_bottom.svg',
          semanticsLabel: 'Shape Bottom',
        ),
      ),
    );
  }
}

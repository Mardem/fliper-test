import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShapeBottomStack extends StatelessWidget {
  final double? bottom;
  final double? right;

  const ShapeBottomStack({
    Key? key,
    this.bottom = -100,
    this.right = -250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: RotationTransition(
        turns: new AlwaysStoppedAnimation(-20 / 560),
        child: SvgPicture.asset(
          'src/img/home/shape_bottom.svg',
          semanticsLabel: 'Shape Bottom',
        ),
      ),
    );
  }
}

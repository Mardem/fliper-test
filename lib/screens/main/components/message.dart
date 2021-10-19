import 'package:fliper/screens/components/animated/up_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageStack extends StatelessWidget {
  const MessageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      height: size.width * .13,
      top: 150,
      left: -15,
      child: AppDownAnimation(
        child: SvgPicture.asset(
          'src/img/home/message.svg',
          semanticsLabel: 'Message',
        ),
      ),
    );
  }
}

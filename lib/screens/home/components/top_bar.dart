import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage('src/img/bgs/home.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: CircleAvatar(
              foregroundColor: DefaultColors.defaultBlue,
              backgroundColor: DefaultColors.accentBlue.withOpacity(.5),
              radius: 30,
              child: Text(
                'MC',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: RichText(
              text: TextSpan(
                text: 'Olá,\n',
                style: TextStyle(color: Colors.white),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Marden Cavalcante',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              child: Icon(LineIcons.bell,
                  size: size.width * .08, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

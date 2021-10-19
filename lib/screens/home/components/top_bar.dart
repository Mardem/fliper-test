import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: CircleAvatar(
              foregroundColor: DefaultColors.defaultBlue,
              backgroundColor: DefaultColors.accentBlue,
              radius: 30,
              child: Text(
                'MC',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
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
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Marden Cavalcante',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              margin: EdgeInsets.all(10),
              child: Icon(
                LineIcons.bell,
                size: size.width * .05,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

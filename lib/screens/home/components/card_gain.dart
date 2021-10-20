import 'package:fliper/config/global.dart';
import 'package:fliper/config/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class CardGainHome extends StatelessWidget {
  final double? totalGains;
  final GestureTapCallback? onPressed;

  const CardGainHome({Key? key, required this.totalGains, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(ScreenUtil().setWidth(10)),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.centerLeft,
          colors: [
            Color.fromRGBO(33, 60, 141, 1.0),
            Color.fromRGBO(33, 73, 179, 1.0),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      height: ScreenUtil().setHeight(100),
      child: GestureDetector(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: GlobalConfig.paddingX,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rendimentos',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                      ),
                    ),
                    Text(
                      AppHelpers.formatCurrency(totalGains ?? 0),
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.sp,
                      ),
                    ),
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(
                  ScreenUtil().setWidth(15),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(LineIcons.alternateSync),
              ),
            )
          ],
        ),
        onTap: onPressed,
      ),
    );
  }
}

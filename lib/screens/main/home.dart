import 'package:fliper/screens/main/components/banner.dart';
import 'package:fliper/screens/main/components/cta_button.dart';
import 'package:fliper/screens/main/components/shape_bottom.dart';
import 'package:fliper/screens/main/components/shape_top.dart';
import 'package:fliper/screens/main/components/texts/description.dart';
import 'package:fliper/screens/main/components/texts/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color.fromRGBO(249, 249, 252, 1.0),
        child: Stack(
          children: [
            ShapeTopStack(),
            Positioned(
              height: ScreenUtil().setHeight(480),
              width: ScreenUtil().screenWidth,
              child: MainBannerStack(),
            ),
            TitleHomeStack(),
            DescriptionHomeStack(),
            ShapeBottomStack(),
            CTAButtonStack(),
          ],
        ),
      ),
    );
  }
}

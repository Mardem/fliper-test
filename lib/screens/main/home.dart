import 'package:fliper/screens/main/components/banner.dart';
import 'package:fliper/screens/main/components/bar_chart.dart';
import 'package:fliper/screens/main/components/cta_button.dart';
import 'package:fliper/screens/main/components/message.dart';
import 'package:fliper/screens/main/components/pizza_chart.dart';
import 'package:fliper/screens/main/components/rectangle.dart';
import 'package:fliper/screens/main/components/shape_bottom.dart';
import 'package:fliper/screens/main/components/shape_top.dart';
import 'package:fliper/screens/main/components/texts/description.dart';
import 'package:fliper/screens/main/components/texts/title.dart';
import 'package:flutter/material.dart';

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
            RectangleStack(),
            MessageStack(),
            MainBannerStack(),
            PizzaChartStack(),
            BarChartStack(),
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

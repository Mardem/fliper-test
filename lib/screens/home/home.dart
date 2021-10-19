import 'package:fliper/screens/home/components/banner.dart';
import 'package:fliper/screens/home/components/bar_chart.dart';
import 'package:fliper/screens/home/components/cta_button.dart';
import 'package:fliper/screens/home/components/message.dart';
import 'package:fliper/screens/home/components/pizza_chart.dart';
import 'package:fliper/screens/home/components/rectangle.dart';
import 'package:fliper/screens/home/components/shape_bottom.dart';
import 'package:fliper/screens/home/components/shape_top.dart';
import 'package:fliper/screens/home/components/texts/description.dart';
import 'package:fliper/screens/home/components/texts/title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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

import 'dart:io';

import 'package:fliper/notifiers/resume/resume.dart';
import 'package:fliper/screens/components/ui/app_input.dart';
import 'package:fliper/screens/home/components/card_gain.dart';
import 'package:fliper/screens/home/components/card_list.dart';
import 'package:fliper/screens/home/components/last_gains_text.dart';
import 'package:fliper/screens/home/components/top_bar.dart';
import 'package:fliper/screens/home/components/top_home_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<ResumeNotifier>(builder: (
        BuildContext context,
        ResumeNotifier notifier,
        Widget? child,
      ) {
        return Container(
          margin: EdgeInsets.only(top: Platform.isAndroid ? 20 : 0),
          height: ScreenUtil().screenHeight,
          child: Stack(
            children: [
              TopHomeShape(),
              Positioned(child: TopBar(), height: ScreenUtil().setHeight(170)),
              Positioned(
                top: ScreenUtil().setHeight(130),
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: [
                      AppInput(decoration: _inputDecoration(hint: 'Pesquisar')),
                      SizedBox(height: 20),
                      CardGainHome(
                        totalGains: notifier.total.toDouble(),
                        onPressed: () => print('oie'),
                      ),
                      LastGainsTextHome(),
                      Container(
                        height: ScreenUtil().setHeight(300),
                        child: ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            int calc = index % 2;
                            index += 1;

                            return CardList(
                              title: 'Título ' + index.toString(),
                              value: calc == 1 ? 100 : -100,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  InputDecoration _inputDecoration({required String hint}) {
    return InputDecoration(
      border: InputBorder.none,
      hintText: hint,
      prefixIcon: Icon(
        LineIcons.search,
        size: ScreenUtil().setWidth(15),
        color: Colors.black54,
      ),
      filled: true,
      fillColor: Color.fromRGBO(248, 246, 246, 1.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}

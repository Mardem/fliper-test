import 'dart:io';

import 'package:fliper/config/colors/default.dart';
import 'package:fliper/config/helpers.dart';
import 'package:fliper/entities/summary/summary_list.dart';
import 'package:fliper/notifiers/resume/resume.dart';
import 'package:fliper/screens/components/ui/app_button.dart';
import 'package:fliper/screens/components/ui/app_input.dart';
import 'package:fliper/screens/home/components/card_gain.dart';
import 'package:fliper/screens/home/components/card_list.dart';
import 'package:fliper/screens/home/components/last_gains_text.dart';
import 'package:fliper/screens/home/components/top_bar.dart';
import 'package:fliper/screens/home/components/top_home_shape.dart';
import 'package:fliper/screens/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
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
                          itemCount:
                              notifier.listEntity?.data?.wealthSummary.length,
                          itemBuilder: (
                            BuildContext context,
                            int index,
                          ) {
                            final WealthSummary? item =
                                notifier.listEntity?.data?.wealthSummary[index];

                            String title =
                                !item!.hasHistory! ? 'Saque' : 'Ganhos mensal';

                            return GestureDetector(
                              child: CardList(
                                title: title + ' #' + item.id!.toString(),
                                value: item.gain!.toDouble(),
                                withdraw: item.hasHistory!,
                                description: 'Total: ' +
                                    AppHelpers.formatCurrency(
                                      item.total!.toDouble(),
                                    ),
                              ),
                              onTap: () => _openScreen(notifier, item),
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

  _openScreen(ResumeNotifier notifier, WealthSummary summary) {
    Get.dialog(
      Container(
        height: 30,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Em qual versão deseja visualizar?',
              style: GoogleFonts.montserrat(
                color: DefaultColors.defaultBlue,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AppButton(
              backgroundColor: DefaultColors.defaultBlue,
              child: Text(
                'Versão proposta',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
              elevation: 0,
              onPressed: () {
                notifier.selectSummary(summary);

                Get.off(() => ResumeScreen());
              },
            ),
            AppButton(
              backgroundColor: DefaultColors.defaultBlue,
              child: Text(
                'Versão 2',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
              elevation: 0,
              onPressed: () {
                notifier.selectSummary(summary);

                Get.off(() => ResumeScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}

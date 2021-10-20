import 'package:fliper/config/colors/default.dart';
import 'package:fliper/config/global.dart';
import 'package:fliper/config/helpers.dart';
import 'package:fliper/main.dart';
import 'package:fliper/notifiers/resume/resume.dart';
import 'package:fliper/screens/components/layouts/main.dart';
import 'package:fliper/screens/components/ui/app_button_outline.dart';
import 'package:fliper/screens/resume/components/header.dart';
import 'package:fliper/screens/resume/components/line_resume.dart';
import 'package:fliper/screens/resume/components/total_invest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Consumer<ResumeNotifier>(builder: (
        BuildContext context,
        ResumeNotifier notifier,
        Widget? child,
      ) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              margin: GlobalConfig.marginX,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(178, 183, 201, 1),
                    spreadRadius: 1,
                    offset: Offset(0.5, 0.5),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  ResumeHeader(),
                  SizedBox(height: ScreenUtil().setWidth(30)),
                  Text(
                    'Valor investido',
                    style: TextStyle(
                      color: Colors.black87.withOpacity(.7),
                    ),
                  ),
                  ResumeTotalInvest(
                    total: notifier.summarySelected?.total!.toDouble(),
                  ),
                  SizedBox(height: ScreenUtil().setWidth(30)),
                  LineResume(
                    leftText: 'Rentabilidade/mês',
                    rightValue: AppHelpers.formatPercent(
                      notifier.summarySelected?.profitability.toDouble(),
                    ),
                  ),
                  LineResume(
                    leftText: 'CDI',
                    rightValue: AppHelpers.formatPercent(
                        notifier.summarySelected?.cdi.toDouble()),
                  ),
                  LineResume(
                    leftText: 'Ganho/mês',
                    rightValue: AppHelpers.formatCurrency(
                      notifier.summarySelected?.gain!.toDouble(),
                    ),
                  ),
                  Divider(
                    height: 30,
                    color: DefaultColors.defaultGrey.withOpacity(.2),
                    thickness: 2,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: AppButtonOutline(
                      elevation: 0,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Ver mais'.toUpperCase(),
                        style: TextStyle(
                          color: DefaultColors.defaultBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Get.off(MainMenu()),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

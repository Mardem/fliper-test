import 'package:fliper/config/helpers.dart';
import 'package:fliper/notifiers/resume/resume.dart';
import 'package:fliper/screens/resume/components/total_invest.dart';
import 'package:fliper/screens/resume_v2/components/card_resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ResumeGridDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 20,
              )
            ],
          ),
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Valor investido',
                style: TextStyle(
                  color: Colors.black87.withOpacity(.7),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ResumeTotalInvest(
                total: context
                    .read<ResumeNotifier>()
                    .summarySelected!
                    .total!
                    .toDouble(),
              ),
            ],
          ),
          height: ScreenUtil().setHeight(100),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 30,
            right: 20,
            left: 20,
          ),
          height: ScreenUtil().setHeight(500),
          child: GridView.count(
            mainAxisSpacing: 40,
            crossAxisSpacing: 40,
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            children: [
              CardResume(
                title: 'CDI',
                subtitle: AppHelpers.formatPercent(
                  context
                      .read<ResumeNotifier>()
                      .summarySelected
                      ?.cdi
                      .toDouble(),
                ),
              ),
              CardResume(
                title: 'Rentabilidade/Mês',
                subtitle: AppHelpers.formatPercent(
                  context
                      .read<ResumeNotifier>()
                      .summarySelected
                      ?.cdi
                      .toDouble(),
                ),
              ),
              CardResume(
                title: 'Ganho/Mês',
                subtitle: AppHelpers.formatCurrency(
                  context
                      .read<ResumeNotifier>()
                      .summarySelected
                      ?.gain!
                      .toDouble(),
                ),
                fontSizeSubtitle: 16.sp,
              ),
              CardResume(
                title: 'Há histórico?',
                subtitle:
                    context.read<ResumeNotifier>().summarySelected!.hasHistory!
                        ? 'Sim'
                        : 'Não',
                fontSizeSubtitle: 16.sp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

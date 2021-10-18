import 'package:fliper/config/colors/default.dart';
import 'package:fliper/config/global.dart';
import 'package:fliper/config/helpers.dart';
import 'package:fliper/screens/components/layouts/main.dart';
import 'package:fliper/screens/components/ui/app_button_outline.dart';
import 'package:fliper/screens/resume/components/header.dart';
import 'package:fliper/screens/resume/components/line_resume.dart';
import 'package:fliper/screens/resume/components/total_invest.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MainLayout(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width,
            margin: GlobalConfig.marginX,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(178, 183, 201, 1),
                  spreadRadius: 1,
                  offset: Offset(1, 0.5),
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
                SizedBox(height: size.width * .06),
                Text(
                  'Valor investido',
                  style: TextStyle(
                    color: Colors.black87.withOpacity(.7),
                  ),
                ),
                ResumeTotalInvest(total: 3200876),
                SizedBox(height: size.width * .07),
                LineResume(leftText: 'Rentabilidade/mês', rightValue: '2,767%'),
                LineResume(leftText: 'CDI', rightValue: '3,45%'),
                LineResume(
                  leftText: 'Ganho/mês',
                  rightValue: AppHelpers.formatCurrency(
                    1833.23,
                  ),
                ),
                Divider(
                  color: DefaultColors.defaultGrey.withOpacity(.2),
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: AppButtonOutline(
                    child: Text(
                      'Ver mais'.toUpperCase(),
                      style: TextStyle(
                        color: DefaultColors.defaultBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () => print('ver mais'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

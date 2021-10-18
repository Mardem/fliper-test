import 'package:fliper/config/global.dart';
import 'package:fliper/screens/components/layouts/main.dart';
import 'package:fliper/screens/resume/components/header.dart';
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
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                ResumeHeader(),
                SizedBox(
                  height: size.width * .05,
                ),
                Text(
                  'Valor investido',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                ResumeTotalInvest(
                  total: 400,
                ),
                Container(
                  height: size.width * .10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

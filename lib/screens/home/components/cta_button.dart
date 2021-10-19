import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/components/ui/app_button.dart';
import 'package:fliper/screens/resume/resume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CTAButtonStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 20,
      child: Container(
        child: AppButton(
          backgroundColor: DefaultColors.defaultBlue,
          elevation: 0,
          child: Text(
            'Iniciar experiência',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Get.to(() => ResumeScreen()),
        ),
      ),
    );
  }
}

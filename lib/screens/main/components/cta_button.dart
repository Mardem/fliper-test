import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/components/ui/app_button.dart';
import 'package:fliper/services/resume.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CTAButtonStack extends StatelessWidget with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenUtil().setWidth(40),
      left: ScreenUtil().setWidth(20),
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
          onPressed: () async {
            EasyLoading.showToast(
              'Iniciando...',
              toastPosition: EasyLoadingToastPosition.bottom,
            );

            ResumeService service = ResumeService(context);
            await service.list();

            EasyLoading.dismiss();
          },
          // onPressed: () => Get.off(() => MainMenu()),
        ),
      ),
    );
  }
}

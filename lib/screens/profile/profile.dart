import 'package:fliper/screens/main/components/shape_bottom.dart';
import 'package:fliper/screens/main/components/shape_top.dart';
import 'package:fliper/screens/profile/components/avatar.dart';
import 'package:fliper/screens/profile/components/line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ShapeTopStack(),
          ShapeBottomStack(),
          Positioned(
            height: ScreenUtil().setHeight(210),
            width: ScreenUtil().screenWidth,
            top: ScreenUtil().setWidth(100),
            child: UserProfileAvatar(),
          ),
          Positioned(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            top: ScreenUtil().setWidth(330),
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                LineItemProfile(
                  icon: Icon(LineIcons.key),
                  title: 'Senha',
                  onPressed: _toastInfo,
                ),
                LineItemProfile(
                  icon: Icon(LineIcons.newspaper),
                  title: 'Transações',
                  onPressed: _toastInfo,
                ),
                LineItemProfile(
                  icon: Icon(LineIcons.cogs),
                  title: 'Configurações',
                  onPressed: _toastInfo,
                ),
                LineItemProfile(
                  icon: Icon(LineIcons.headset),
                  title: 'Ajuda',
                  onPressed: _toastInfo,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _toastInfo() {
    EasyLoading.showToast('Funcionalidade ainda não implementada... 💔');
  }
}

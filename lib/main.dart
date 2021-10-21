import 'package:fliper/notifiers/notifiers.dart';
import 'package:fliper/screens/main/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(
    MultiProvider(
      providers: notifiers,
      child: FliperWallet(),
    ),
  );
}

class FliperWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        title: 'Fliper Wallet',
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: MainScreen(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

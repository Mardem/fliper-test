import 'package:fliper/config/colors/default.dart';
import 'package:fliper/screens/home/home.dart';
import 'package:fliper/screens/main/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        HomeScreen(),
        MainScreen(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(LineIcons.home),
          title: ("Início"),
          activeColorPrimary: DefaultColors.defaultBlue,
          inactiveColorPrimary: DefaultColors.defaultGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(LineIcons.userCircle),
          title: ("Perfil"),
          activeColorPrimary: DefaultColors.defaultBlue,
          inactiveColorPrimary: DefaultColors.defaultGrey,
        )
      ],
      confineInSafeArea: true,
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(223, 228, 241, 1.0),
            spreadRadius: 4,
            offset: Offset(2, 0),
            blurRadius: 30,
          ),
        ],
        colorBehindNavBar: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12,
    );
  }
}

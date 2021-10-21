import 'package:fliper/screens/home/home.dart';
import 'package:fliper/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'config/colors/default.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        HomeScreen(),
        ProfileScreen(),
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
      navBarHeight: ScreenUtil().setHeight(45),
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

import 'package:fliper/config/global.dart';
import 'package:fliper/config/helpers.dart';
import 'package:fliper/screens/home/components/card_list.dart';
import 'package:fliper/screens/home/components/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
            Positioned(
              child: TopBar(),
              height: ScreenUtil().setHeight(170),
            ),
            Positioned(
              top: ScreenUtil().setHeight(130),
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                // color: Colors.black54.withOpacity(.1),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Pesquisar',
                        prefixIcon: Icon(
                          LineIcons.search,
                          size: ScreenUtil().setWidth(15),
                          color: Colors.black54,
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(238, 236, 236, 1.0),
                        contentPadding: const EdgeInsets.only(
                          left: 14.0,
                          bottom: 6.0,
                          top: 8.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.all(ScreenUtil().setWidth(10)),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.centerLeft,
                          colors: [
                            Color.fromRGBO(33, 60, 141, 1.0),
                            Color.fromRGBO(33, 73, 179, 1.0),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      height: ScreenUtil().setHeight(100),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: GlobalConfig.paddingX,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rendimentos',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Text(
                                    AppHelpers.formatCurrency(3020),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(
                                ScreenUtil().setWidth(15),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(LineIcons.alternateSync),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: ScreenUtil().setWidth(30),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Últimos Rendimentos',
                              style: GoogleFonts.montserrat(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                LineIcons.angleRight,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(300),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          int calc = index % 2;

                          return CardList(
                            value: calc == 1 ? 100 : -100,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:untitled1/core/assets/styling.dart';
import 'package:untitled1/features/check_in/ui/check_in_page.dart';
import 'package:untitled1/features/homescreen/ui/homecreen_page.dart';
import 'package:untitled1/features/my_booking/ui/my_booking_page.dart';
import 'package:untitled1/features/promo/ui/promo_page.dart';

import 'core/assets/my_colors.dart';
import 'core/assets/my_cons.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  PersistentTabController? _controller;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyCons.width_percent = MediaQuery.of(context).size.width / 428;
    MyCons.heigh_percent = MediaQuery.of(context).size.height / 926;
    MyCons.width_screen = MediaQuery.of(context).size.width;
    MyCons.heigh_screen = MediaQuery.of(context).size.height;
    return Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: MyCons.size50, right: MyCons.size10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(MyCons.size50 * 2),
            ),
            child: Padding(
              padding: EdgeInsets.all(MyCons.size15),
              child: Icon(
                CupertinoIcons.chat_bubble_2_fill,
                size: MyCons.size45,
                color: MyColors.mainColor,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: gradienBg(),
          child: SafeArea(
            child: PersistentTabView(
              context,
              controller: _controller,
              screens: _buildScreens(),
              items: _navBarsItems(),
              confineInSafeArea: true,
              backgroundColor: Colors.white, // Default is Colors.white.
              handleAndroidBackButtonPress: true, // Default is true.
              resizeToAvoidBottomInset:
                  true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
              stateManagement: true, // Default is true.
              hideNavigationBarWhenKeyboardShows:
                  true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
              decoration: NavBarDecoration(
                borderRadius: BorderRadius.circular(MyCons.size10),
                colorBehindNavBar: Colors.white,
              ),
              popAllScreensOnTapOfSelectedTab: true,
              popActionScreens: PopActionScreensType.all,
              itemAnimationProperties: const ItemAnimationProperties(
                // Navigation Bar's items animation properties.
                duration: Duration(milliseconds: 200),
                curve: Curves.ease,
              ),
              screenTransitionAnimation: const ScreenTransitionAnimation(
                // Screen transition animation on change of selected tab.
                animateTabTransition: true,
                curve: Curves.ease,
                duration: Duration(milliseconds: 200),
              ),
              navBarStyle: NavBarStyle
                  .style6, // Choose the nav bar style with this property.
            ),
          ),
        ));
  }

  List<Widget> _buildScreens() {
    return [HomeScreenPage(), MyBookingPage(), CheckInPage(), PromoPage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: ("Home"),
          activeColorPrimary: MyColors.mainColor,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
        icon: Stack(
          children: <Widget>[
            const Icon(CupertinoIcons.cart_fill),
            Positioned(
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: MyCons.size10,
                  minHeight: MyCons.size10,
                ),
              ),
            )
          ],
        ),
        title: ("My Booking"),
        activeColorPrimary: MyColors.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.map_pin_ellipse),
        title: ("Check In"),
        activeColorPrimary: MyColors.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.percent),
        title: ("Promo"),
        activeColorPrimary: MyColors.mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}

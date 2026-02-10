import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:finance_ui/feature/home/ui/add_card.dart';
import 'package:finance_ui/feature/home/ui/home_screen.dart';
import 'package:finance_ui/feature/home/ui/my_card.dart';
import 'package:finance_ui/feature/home/ui/profile.dart';
import 'package:finance_ui/feature/home/ui/statistic_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});
  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  late final PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const StatisticScreen(),
      const AddCard(),
      const MyCard(),
      const Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset('assets/images/Home.png', width: 24.w, height: 24.h),
        inactiveIcon: Image.asset(
          'assets/images/Home.png',
          width: 24.w,
          height: 24.h,
          color: AppColors.gray,
        ),
        title: "Home",

        activeColorPrimary: AppColors.mainAppColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Chart.png',
          width: 24.w,
          height: 24.h,
          color: AppColors.mainAppColor,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Chart.png',
          width: 24.w,
          height: 24.h,
        ),
        title: "Statistic",
        activeColorPrimary: AppColors.mainAppColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: Container(
          width: 80.w,
          height: 80.w,
          decoration: BoxDecoration(
            color: AppColors.mainAppColor, // الدائرة الكبيرة
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: 26.w,
              height: 26.w,
              decoration: BoxDecoration(
                color: Colors.white, // المربع الأبيض
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  CupertinoIcons.plus,
                  size: 18.w,
                  color: AppColors.mainAppColor, // لون +
                ),
              ),
            ),
          ),
        ),

        inactiveIcon: Container(
          width: 56.w,
          height: 56.w,
          decoration: BoxDecoration(
            color: AppColors.mainAppColor.withOpacity(0.6),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: 26.w,
              height: 26.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  CupertinoIcons.plus,
                  size: 18.w,
                  color: AppColors.mainAppColor,
                ),
              ),
            ),
          ),
        ),

        activeColorPrimary: AppColors.mainAppColor,
        inactiveColorPrimary: Colors.grey,
      ),

      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Wallet.png',
          color: AppColors.mainAppColor,
          width: 24.w,
          height: 24.h,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Wallet.png',
          width: 24.w,
          height: 24.h,
        ),
        title: ("My card"),
        activeColorPrimary: AppColors.mainAppColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/Profile.png',
          color: AppColors.mainAppColor,
          width: 24.w,
          height: 24.h,
        ),
        inactiveIcon: Image.asset(
          'assets/images/Profile.png',
          width: 24.w,
          height: 24.h,
        ),
        title: ("Profile"),
        activeColorPrimary: AppColors.mainAppColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
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
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style17, // Choose the nav bar style with this property.
    );
  }
}

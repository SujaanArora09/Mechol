import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pranjal_intern2/app_bars.dart';
import 'package:pranjal_intern2/screens/seller/home_page.dart';
import 'package:pranjal_intern2/screens/seller/sell_machine_1.dart';
import 'package:pranjal_intern2/screens/seller/wanted_machine.dart';
import 'package:pranjal_intern2/widgets/navbar_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bottomNavIndex = 0.obs;
    final screenBody = [
      const HomePage(),
      const SellMachine1(),
      const WantedMachine(),
      const SizedBox(),
    ];
    final screenAppBar = [
      homePageAppBar(),
      sellMachineAppBar(),
      testAppBar(),
      testAppBar(),
    ];

    return SafeArea(
      child: Obx(
        () => Scaffold(
            backgroundColor: Colors.white,
            appBar: screenAppBar[bottomNavIndex.value],
            body: IndexedStack(
              index: bottomNavIndex.value,
              children: screenBody,
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: bottomNavIndex.value,
                items: [
                  myNavbarItem(0),
                  myNavbarItem(1),
                  myNavbarItem(2),
                  myNavbarItem(3)
                ],
                // selectedItemColor: AppColors.textColor,
                // unselectedItemColor: AppColors.greyColor,
                // backgroundColor: AppColors.secbgColor,
                // selectedFontSize: 12.sp,
                // unselectedFontSize: 12.sp,

                // selectedIconTheme: IconThemeData(size: 16.sp),
                // unselectedIconTheme: IconThemeData(size: 16.sp),
                onTap: (value) => bottomNavIndex.value = value)),
      ),
    );
  }

  BottomNavigationBarItem myNavbarItem(int bottomNavIndex) {
    return BottomNavigationBarItem(
      icon: Icon(
        // size: 18.sp,
        NavbarData.navicons[bottomNavIndex],
      ),
      label: NavbarData.navpagename[bottomNavIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pranjal_intern2/onboarding_screens/onboarding_screen.dart';
//import 'package:pranjal_intern2/onboarding_screens/onboarding_screen.dart';
import 'package:pranjal_intern2/onboarding_screens/build_page.dart';
import 'package:pranjal_intern2/screens/auto_log_out.dart';
import 'package:pranjal_intern2/screens/seller/Privacy_Policy.dart';
import 'package:pranjal_intern2/screens/seller/advertise_witus.dart';
import 'package:pranjal_intern2/screens/seller/change_password.dart';
import 'package:pranjal_intern2/screens/seller/change_password_sucessfull.dart';
import 'package:pranjal_intern2/screens/seller/chat_page.dart';
import 'package:pranjal_intern2/screens/seller/home_page.dart';
import 'package:pranjal_intern2/screens/seller/my_listing.dart';
import 'package:pranjal_intern2/screens/seller/notification_setting.dart';
import 'package:pranjal_intern2/screens/seller/permission.dart';
import 'package:pranjal_intern2/screens/seller/product_details.dart';
import 'package:pranjal_intern2/screens/seller/rate_us.dart';
import 'package:pranjal_intern2/screens/seller/sell_machine_1.dart';
import 'package:pranjal_intern2/screens/seller/sell_machine_2.dart';
import 'package:pranjal_intern2/screens/seller/seller_registration_1.dart';
import 'package:pranjal_intern2/screens/seller/seller_registration_2.dart';
//import 'package:pranjal_intern2/screens/seller/sell_machine.dart';
import 'package:pranjal_intern2/screens/seller/serach_page.dart';
import 'package:pranjal_intern2/screens/seller/setting_page.dart';
import 'package:pranjal_intern2/screens/seller/t&c.dart';
import 'package:pranjal_intern2/screens/seller/thankyou_suscrib.dart';
import 'package:pranjal_intern2/screens/seller/upload_image.dart';
import 'package:pranjal_intern2/screens/seller/wanted_machine.dart';
import 'package:pranjal_intern2/screens/seller/wishlist_page.dart';
import 'package:pranjal_intern2/screens/subscription_screen.dart';
//import 'package:pranjal_intern2/onboarding_screens/onboarding_screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: 'onboarding1',
      // routes: {
      //   'onboarding1': (context) => const OnboardingScreen1(),
      //   'onboarding2': (context) => const OnboardingScreen2(),
      // },
      home: Scaffold(
        body: OnboardingScreen(),
      ),
    );
  }
}

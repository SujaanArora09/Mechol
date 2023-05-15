import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pranjal_intern2/onboarding_screens/onboarding_screen.dart';
//import 'package:pranjal_intern2/onboarding_screens/onboarding_screen.dart';
import 'package:pranjal_intern2/onboarding_screens/build_page.dart';
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

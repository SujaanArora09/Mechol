import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pranjal_intern2/onboarding_screens/build_page.dart';
//import 'package:pranjal_intern2/onboarding_screens/onboarding_screen_2.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

//import 'package:get/get.dart';

class BuildPage extends StatelessWidget {
  BuildPage(
      {required this.imgLoc, required this.heading, required this.subTitle});

  final String imgLoc;
  final String heading;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          //height: height,
          child: Stack(
            children: [
              Container(
                height: height * 0.7,
                width: width,
                child: Image.asset(
                  imgLoc,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: height * 0.705,
                left: width * 0.155,
                child: Container(
                  decoration: const BoxDecoration(),
                  height: 150,
                  width: width * 0.7,
                  child: Column(
                    children: [
                      Text(
                        heading,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 14, color: Colors.black38),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

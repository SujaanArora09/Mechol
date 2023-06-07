import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/onboarding_screens/build_page.dart';
//import 'package:Sujaan_MecholApp/onboarding_screens/onboarding_screen_2.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

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
                bottom: 0,
                left: 40,
                right: 40,
                child: Container(
                  decoration: const BoxDecoration(),
                  // height: 150,
                  // width: width * 0.7,
                  child: Column(
                    children: [
                      Text(
                        heading,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xff333333),
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        subTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xe5677294),
                          fontSize: 14,
                        ),
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

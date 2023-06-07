import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Notifications",
        backButton: true,
        bellIcon: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70
          ),
          Center(
            child: Image.asset('assets/images/Notifications.png',height: 290,),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "No Notifications",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff222222),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "You don’t have any notification ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0x4c222222),
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: height * 0.18,
          ),
        ],
      ),
    );
  }
}

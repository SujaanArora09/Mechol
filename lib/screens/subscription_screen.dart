import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

import '../widgets/gradientAppBar.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height:1
          ),
          Column(
            children: [
              Center(child: Image.asset('assets/images/crown.png',height: 150,)),
              SizedBox(height: 56,),
              Text(
                "Thank you for subscribing",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Admin will verify you for the\nadvertisements and\nwill contact you soon",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0x4c222222),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: CustomButton(text: "Go To Home", onClick: (){
                  Get.to(BottomNavigation());
            }),
          )
        ],
      ),
    );
  }
}

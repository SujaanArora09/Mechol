import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class AdPosted extends StatefulWidget {
  const AdPosted({super.key});

  @override
  State<AdPosted> createState() => _AdPostedState();
}

class _AdPostedState extends State<AdPosted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: SizedBox()),
          Image.asset("assets/images/AdPostedImage.png",height: 285,),
          SizedBox(height: 60,),
          Text(
            "Ad Posted",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff222222),
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 11,),
          Text(
            "Your ad has been sent to\nadmin for verification. Admin\nwill contact you soon",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0x4c222222),
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 40),
                child: CustomButton(text: "Go To Home", onClick: (){
                  Get.to(BottomNavigation());
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class ChangePasswordSucessfull extends StatefulWidget {
  const ChangePasswordSucessfull({super.key});

  @override
  State<ChangePasswordSucessfull> createState() =>
      _ChangePasswordSucessfullState();
}

class _ChangePasswordSucessfullState extends State<ChangePasswordSucessfull> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.12,
            width: width,
          ),
          Image.asset('assets/images/Resetpassword.png',height: 300,),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            'Password Changed\n Sucessfully!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
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

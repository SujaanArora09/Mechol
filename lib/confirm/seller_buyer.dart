import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/onboarding_screens/onboarding_screen.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/seller_registration_1.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SellerBuyer extends StatefulWidget {
  const SellerBuyer({super.key});

  @override
  State<SellerBuyer> createState() => _SellerBuyerState();
}

class _SellerBuyerState extends State<SellerBuyer> {
  late int? select = null;
  int seller = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: Text(
                'Please conform your identity',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Select any one option',
              style: TextStyle(
                color: Color(0xff677294),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (select == 1) {
                  select = 0;
                } else {
                  select = 0;
                }
                seller = 1;
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  border: select == 0 ? Border.all(color: Color(0xff0582ca), width: 1, ) : Border.all(color:Colors.transparent, width: 1, ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    select == 0?
                    BoxShadow(
                      color: Color(0x660582ca),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ):BoxShadow(
                      color: Color(0x0f000000),
                      blurRadius: 22,
                      offset: Offset(0, 0),
                    )
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/SellerImage.png',height: 104,),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I am a seller',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                if (select == 1) {
                  select = 1;
                } else {
                  select = 1;
                }
                seller = 0;
                setState(() {});
              },
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  border: select == 1 ? Border.all(color: Color(0xff0582ca), width: 1, ) : Border.all(color:Colors.transparent, width: 1, ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    select == 1?
                    BoxShadow(
                      color: Color(0x660582ca),
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ):BoxShadow(
                      color: Color(0x0f000000),
                      blurRadius: 22,
                      offset: Offset(0, 0),
                    )
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/BuyerImage.png',height: 118,),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I am a buyer',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Continue as guest',
              style: TextStyle(
                color: Color(0xff0582ca),
                fontSize: 12,
                decoration: TextDecoration.underline,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
          CustomButton(
                text: select == 1 ? 'Proceed' : 'Proceed',
                width: width,
                buttonColor: select == null ? Colors.grey : Colors.blue, onClick: () {
                if (select == 0) {
                  Get.to(SellerRegistration1());
                } else if (select == 1) {
                  Get.to(BottomNavigation());
                }
                // Get.to();
                print(select);
              },
              ),
            SizedBox(height: 34,)
          ],
        ),
      ),
    );
  }
}

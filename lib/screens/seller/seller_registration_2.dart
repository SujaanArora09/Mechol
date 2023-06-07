import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/subscription_Details.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class SellerRegistration2 extends StatefulWidget {
  const SellerRegistration2({super.key});

  @override
  State<SellerRegistration2> createState() => _SellerRegistration2State();
}

class _SellerRegistration2State extends State<SellerRegistration2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10,right: 20,left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Seller Registration",
                      style: TextStyle(
                        color: Color(0xff222222),
                        fontSize: 24,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(onTap: () {
                      Get.to(SubscriptionDetails());
                    }, child: Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff677294),
                        fontSize: 14,
                      ),
                    )),
                  ],
                ),
                CustomTextField(
                    width: width, label: 'Telephone No (optional)'),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    width: width, label: 'Pincode'),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    width: width, label: 'Address'),
                CustomTextField(
                    width: width, label: 'Set a Password'),
                CustomTextField(
                    width: width, label: 'Confirm Password'),
                CustomTextField(
                    width: width, label: 'Company Name'),
                CustomTextField(
                    width: width, label: 'How many years? (Company age)'),
                CustomTextField(
                    width: width, label: 'PAN Card No.'),
                CustomTextField(
                    width: width, label: 'GST No.'),
                CustomTextField(
                    width: width, label: 'Company Regi. Number'),
                SizedBox(
                  height: 20,
                ),
                CustomButton(text: "Proceed", onClick: (){
                  Get.to(SubscriptionDetails());
                }),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

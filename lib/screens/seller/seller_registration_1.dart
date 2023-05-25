import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:pranjal_intern2/screens/seller/seller_registration_2.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class SellerRegistration1 extends StatefulWidget {
  const SellerRegistration1({super.key});

  @override
  State<SellerRegistration1> createState() => _SellerRegistration1State();
}

class _SellerRegistration1State extends State<SellerRegistration1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seller Registration',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                '+91 6203274281',
                style: TextStyle(fontSize: 15),
              ),
              CustomTextField(width: width * 2, hint: 'Full name', label: ''),
              CustomTextField(width: width * 2, hint: 'Full name', label: ''),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Get.to(SellerRegistration2());
                  },
                  child: CommonButton(buttonText: 'Proceed', width: width * 2))
            ],
          ),
        ),
      ),
    );
  }
}

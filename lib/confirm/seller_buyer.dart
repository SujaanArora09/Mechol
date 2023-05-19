import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pranjal_intern2/screens/seller/home_page.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class SellerBuyer extends StatefulWidget {
  const SellerBuyer({super.key});

  @override
  State<SellerBuyer> createState() => _SellerBuyerState();
}

class _SellerBuyerState extends State<SellerBuyer> {
  late int select = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Please conform your identity',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select any one option',
                style: TextStyle(color: Colors.black38),
              ),
              SizedBox(
                height: 55,
              ),
              InkWell(
                onTap: () {
                  if (select == 1) {
                    select = 0;
                  } else {
                    select = 1;
                  }

                  setState(() {});
                },
                child: Container(
                  height: 170,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 25),
                          blurRadius: 3,
                          spreadRadius: -10)
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/Group2.png'),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'I am a seller',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  if (select == 1) {
                    select = 0;
                  } else {
                    select = 1;
                  }
                },
                child: Container(
                  height: 170,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0, 25),
                          blurRadius: 3,
                          spreadRadius: -10)
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/buyer.png'),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'I am a buyer',
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Continue as guest',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Get.to(HomePage());
                  print(select);
                },
                child: CommonButton(
                  buttonText: select == 1 ? 'Proceed' : 'Select',
                  width: width,
                  color: select == 0 ? Colors.grey : Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

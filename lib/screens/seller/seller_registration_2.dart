import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pranjal_intern2/screens/seller/home_page.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seller Registration',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    InkWell(onTap: () {}, child: Text('skip')),
                  ],
                ),
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  width: width, hint: 'Telephone No (optional)', label: ''),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {
                    Get.to(HomePage());
                  },
                  child:
                      CommonButton(buttonText: 'Proceed', width: width * 1.5))
            ],
          ),
        ),
      ),
    );
  }
}

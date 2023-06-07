import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:Sujaan_MecholApp/screens/seller/seller_registration_2.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class SellerRegistration1 extends StatefulWidget {
  const SellerRegistration1({super.key});

  @override
  State<SellerRegistration1> createState() => _SellerRegistration1State();
}

class _SellerRegistration1State extends State<SellerRegistration1> {

  late String selectedOption;
  Widget myDropDown(String dropdownValue) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton<String>(
        underline: Container(
          height: 1,
          color: Color(0xff0582ca),
        ),
        isExpanded: true,

        value: dropdownValue,

        items: <String>[
          'Type',
          'State',
          'City',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF858EA9),
              ),
            ),
          );
        }).toList(),

        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Seller Registration",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 24,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 32,),
                  const Text(
                    "+91-9876543210",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(label: 'Full name', width: width,),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(width: width * 2, label: 'Email'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  myDropDown("State"),
                  SizedBox(height: 20,),
                  myDropDown("City"),
                  SizedBox(height: 20,),
                  myDropDown("Type"),

                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CustomButton(
                    text: "Proceed",
                    onClick: (){
                      Get.to(SellerRegistration2());
                    },
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

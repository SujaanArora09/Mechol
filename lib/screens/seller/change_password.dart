import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/change_password_sucessfull.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:GradientAppBar(
         title: "Change Password",
        backButton: true,
        bellIcon: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(
                height: 40,
              ),
              CustomTextField(
                  width: width * 2, label: 'Enter New Password'),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextField(
                  width: width * 2, label: 'Confirm Password'),
              SizedBox(
                height: height * 0.54,
              ),
              CustomButton(text: "Change", onClick: (){
                    Get.to(ChangePasswordSucessfull());
              })
            ],
          ),
        ),
      ),
    );
  }
}

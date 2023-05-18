import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pranjal_intern2/confirm/seller_buyer.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    'You can search course, apply course and find \n scholarship for aboarding studies',
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // CustomTextField(
                //   width: width,
                //   hint: "Name",
                //   label: "Name",
                // ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  width: width,
                  hint: "Mobile Number",
                  label: "Mobile Number",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  width: width,
                  hint: "Password",
                  label: "Password",
                ),
                SizedBox(
                  height: 27,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Icon(Icons.radio_button_checked),
                //     Text('I agree with the Term of services & privacy policy'),
                //   ],
                // ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Get.to(SellerBuyer());
                    },
                    child: CommonButton(buttonText: 'Log in', width: width, color: Colors.blue,)),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: height * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Enter the 4 digit code that you received on your mobile no.',
                                    style: TextStyle(
                                        color: Colors.black45,
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(),
                                SizedBox(
                                  height: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: height * 0.6,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          topRight:
                                                              Radius.circular(
                                                                  20)),
                                                  color: Colors.white),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: height * 0.05,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Text(
                                                      'Reset Password',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 30),
                                                    child: Text(
                                                      'set the new password for your account so you can login and access all the features',
                                                      style: TextStyle(
                                                          color: Colors.black45,
                                                          //fontWeight: FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 33),
                                                    child: CustomTextField(
                                                        width: width,
                                                        hint: '',
                                                        label: 'New Password'),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 33),
                                                    child: CustomTextField(
                                                        width: width,
                                                        hint: '',
                                                        label: 'Password'),
                                                  ),
                                                  SizedBox(
                                                    height: 60,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 70),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: CommonButton(
                                                          buttonText:
                                                              'Update Password',
                                                          width: width),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: CommonButton(
                                        buttonText: 'Continue', width: width),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.5,
                      width: width * 0.3,
                      color: Colors.black26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Or',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 1.5,
                      width: width * 0.3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: width * 0.38,
                      decoration: BoxDecoration(color: Colors.white38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('assets/images/Group.png'),
                          ),
                          Text('Google'),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: width * 0.38,
                      decoration: BoxDecoration(color: Colors.white38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('assets/images/Group1.png'),
                          ),
                          Text('Facebook'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Don't have an account ? "),
                      TextSpan(
                        text: 'Join us',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pranjal_intern2/login_screen/log_in_screen.dart';
import 'package:pranjal_intern2/onboarding_screens/onboarding_screen.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
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
                    'Join us to start searching',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: Text(
                    'you can search course , apply course and find \n scholarship for aboarding studies',
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  width: width,
                  hint: "Name",
                  label: "Name",
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.radio_button_checked),
                    Text('I agree with the Term of services & privacy policy'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CommonButton(buttonText: 'Sign up', width: width),
                SizedBox(
                  height: 20,
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
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      LogInScreen(),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Have an account ? '),
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.blue),
                        ),
                      ],
                    ),
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

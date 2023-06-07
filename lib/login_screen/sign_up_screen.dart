import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/login_screen/log_in_screen.dart';
import 'package:Sujaan_MecholApp/onboarding_screens/onboarding_screen.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

import '../confirm/seller_buyer.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key?   key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;
  bool _termsAgreed = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.17,
              ),
              const Center(
                child: Text(
                  'Join us to start searching',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Center(
                child: Text(
                  'you can search course , apply course and find \n scholarship for aboarding studies',
                  style: TextStyle(
                    color: Color(0xff677294),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    CustomTextField(
                      width: width,
                      label: "Name",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      width: width,
                      label: "Mobile Number",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width:width*0.8 ,
                child: TextField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    label: Text(
                      "Password",
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    //border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        // Toggle the state of the checkbox here
                        _termsAgreed = !_termsAgreed;
                      });
                    },
                    child: Icon(
                      _termsAgreed ? Icons.radio_button_off : Icons.radio_button_checked,
                      color: _termsAgreed ?  Colors.grey : Colors.black54,
                    ),
                  ),
                  SizedBox(width: 10),
                  const Text(
                    'I agree with the Term of services & privacy policy',
                    style: TextStyle(
                      color: Color(0xff677294),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(text: "Sign Up", onClick: (){
                Get.to(SellerBuyer());
              }),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'Or',
                      style: TextStyle(fontSize: 12),
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
                    height: 54,
                    width: width * 0.38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/images/GoogleLogo.png'),
                          height: 18,
                        ),
                        Text('Google',
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 16,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 54,
                    width: width * 0.38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0f000000),
                          blurRadius: 22,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/images/FaceBookLogo.png'),
                          height: 18,
                        ),
                        Text('Facebook',
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 16,
                        ),),
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
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Have an account ? ',
                      style: TextStyle(
                        color: Color(0xffb1b1b1),
                        fontSize: 14,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                      ),),
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          color: Color(0xff1d1d1d),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

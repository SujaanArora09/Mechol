import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:Sujaan_MecholApp/confirm/seller_buyer.dart';
import 'package:Sujaan_MecholApp/home_view.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;
  bool _newpasswordVisible = false;

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
              const Center(
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
                width: width-80,
                label: "Mobile Number",
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
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(text: "Log In", onClick: (){
                Get.to(SellerBuyer());
              }),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  forgotPasswordModalBottomSheet(context, height, width);
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
              const SizedBox(
                height: 35,
              ),
              const Text.rich(
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
    );
  }

  Future<dynamic> forgotPasswordModalBottomSheet(BuildContext context, double height, double width) {
    return showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return SingleChildScrollView(
                          child: Container(
                            height: height * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 130,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xffc4c4c4),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20,right: 60),
                                  child: Text(
                                    'Enter the 4 digit code that you received on your mobile no.',
                                    style: TextStyle(
                                      color: Color(0xff677294),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                 const Align(
                                  alignment: Alignment.center,
                                  child: Pinput(
                                    defaultPinTheme: PinTheme(
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xffd9d9d9),
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: 26,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                CustomButton(text: "Continue", onClick: (){
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: height * 0.6,
                                          decoration: const BoxDecoration(
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
                                                height: 30,
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: 130,
                                                  height: 5,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(6),
                                                    color: Color(0xffc4c4c4),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: height * 0.05,
                                              ),
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(
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
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(
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
                                                    left: 33 , right: 33),
                                                child: Container(
                                                  width:width*0.8 ,
                                                  child: TextField(
                                                    obscureText: !_newpasswordVisible,
                                                    decoration: InputDecoration(
                                                      suffixIcon: IconButton(
                                                        icon: Icon(
                                                          // Based on passwordVisible state choose the icon
                                                          _newpasswordVisible
                                                              ? Icons.visibility
                                                              : Icons.visibility_off,
                                                          color: Theme.of(context).primaryColorDark,
                                                        ),
                                                        onPressed: () {
                                                          // Update the state i.e. toogle the state of passwordVisible variable
                                                          setState(() {
                                                            _newpasswordVisible = !_newpasswordVisible;
                                                          });
                                                        },
                                                      ),
                                                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                      label: Text(
                                                        "New Password",
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
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    left: 33 , right: 33),
                                                child: Container(
                                                  width:width*0.8 ,
                                                  child: TextField(
                                                    obscureText: !_newpasswordVisible,
                                                    decoration: InputDecoration(
                                                      suffixIcon: IconButton(
                                                        icon: Icon(
                                                          // Based on passwordVisible state choose the icon
                                                          _newpasswordVisible
                                                              ? Icons.visibility
                                                              : Icons.visibility_off,
                                                          color: Theme.of(context).primaryColorDark,
                                                        ),
                                                        onPressed: () {
                                                          // Update the state i.e. toogle the state of passwordVisible variable
                                                          setState(() {
                                                            _newpasswordVisible = !_newpasswordVisible;
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
                                              ),
                                              SizedBox(
                                                height: 40 ,
                                              ),
                                              CustomButton(
                                                text: 'Update Passwprd',
                                                onClick: () {
                                                  Get.to(
                                                    SellerBuyer()
                                                  );
                                                },

                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                }),
                              ],
                            ),
                          ),
                        );
                      });
  }
}

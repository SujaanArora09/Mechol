import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class ChangePasswordSucessfull extends StatefulWidget {
  const ChangePasswordSucessfull({super.key});

  @override
  State<ChangePasswordSucessfull> createState() =>
      _ChangePasswordSucessfullState();
}

class _ChangePasswordSucessfullState extends State<ChangePasswordSucessfull> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Image.asset('assets/images/Resetpassword.png'),
          SizedBox(
            height: height * 0.05,
          ),
          Text(
            'Password Changed\n Sucessfully!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: height * 0.3,
          ),
          CommonButton(buttonText: 'Go to Home', width: width)
        ],
      ),
    );
  }
}

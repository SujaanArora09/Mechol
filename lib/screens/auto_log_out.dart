import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class AutoLogOut extends StatefulWidget {
  const AutoLogOut({super.key});

  @override
  State<AutoLogOut> createState() => _AutoLogOutState();
}

class _AutoLogOutState extends State<AutoLogOut> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/forgotpassword.png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Logged Out',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You were logged out automatically as you \n were trying to post ad on Buyer${"'"}s account \n you have now been changed to seller',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            CommonButton(buttonText: 'login', width: width * 1.5),
          ],
        ),
      ),
    );
  }
}

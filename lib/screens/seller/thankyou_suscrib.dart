import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class ThankyouSubscrib extends StatefulWidget {
  const ThankyouSubscrib({super.key});

  @override
  State<ThankyouSubscrib> createState() => _ThankyouSubscribState();
}

class _ThankyouSubscribState extends State<ThankyouSubscrib> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.2,
            ),
            Center(
              child: Image.asset('assets/images/crown.png'),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Thank you for subscribing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              'Admin will verify you for the \n advertisements and will \n contact you soon',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black38),
            ),
            SizedBox(
              height: height * 0.18,
            ),
            InkWell(
                onTap: () {
                  Get.to(HomePage());
                },
                child: CommonButton(buttonText: 'Go to Home ', width: width))
          ],
        ),
      ),
    );
  }
}

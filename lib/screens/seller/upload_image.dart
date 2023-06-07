import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/AdPosted.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:GradientAppBar(
        title: "Sell Machine",
        backButton: true,
        bellIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 375,
              height: 210.94,
              color: Color(0xffd9d9d9),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 128,
                  width: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffd9d9d9),
                        blurRadius: 22,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Color(0xfff5f5f5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(
                        Icons.camera_alt_rounded,
                        size: 50,
                        color: Color(0xff677294),
                      ),
                      Text(
                        "Take a picture",
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 40,),
                Container(
                  height: 128,
                  width: 128,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffd9d9d9),
                        blurRadius: 22,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Color(0xfff5f5f5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        size: 50,
                        color: Color(0xff677294),
                      ),
                      Text(
                        "Upload from\ngallery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff677294),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
               alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CustomButton(text: "Proceed", onClick: (){
                      Get.to(AdPosted());
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

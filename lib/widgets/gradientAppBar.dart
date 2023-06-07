import 'package:flutter/material.dart';
import 'package:Sujaan_MecholApp/screens/seller/Notifications.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  GradientAppBar({Key? key,
    required this.title,
    this.locationIcon,
    required this.backButton,
    required this.bellIcon,
    this.menuIcon
  });
  final String title;
  final bool? locationIcon;
  final bool? menuIcon;
  final bool backButton;
  final bool bellIcon;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors:  [Color(0xff007ab3), Color(0xff0067a2)],
        ),
      ),
      child: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: backButton,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(backButton==false)  SizedBox(width: 40,),
            if(locationIcon==true) Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
            SizedBox(width: 6,),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            if(bellIcon==false)  SizedBox(width: 50,),
          ],
        ),
        actions: [
          if(bellIcon == true)
          IconButton(
            icon: ImageIcon(AssetImage("assets/images/bellIcon.png"), size: 24, color: Colors.white),
            onPressed: () {
              Get.to(Notifications());
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(900, 56);
}
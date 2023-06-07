import 'package:flutter/material.dart';

class GradientAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  GradientAppBarHome({Key? key,
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
          colors: [Color(0xff0582ca), Color(0xff0067a2)]
        ),
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap:  () {

          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20,right: 15),
            child: ImageIcon(AssetImage("assets/images/hamburgerIcon.png"), color: Colors.white),
          ),
        ),
        // leadingWidth: 20,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on_sharp,color: Colors.white,size: 18,),
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
          ],
        ),
        actions: [
          IconButton(
            icon: ImageIcon(AssetImage("assets/images/bellIcon.png"), size: 24, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(900, 56);
}
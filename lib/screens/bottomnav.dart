import 'package:flutter/material.dart';
import 'package:Sujaan_MecholApp/screens/seller/advertise_witus.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/sell_machine_1.dart';
import 'package:Sujaan_MecholApp/screens/seller/wanted_machine.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List body = [
    HomePage(),
    SellMachine1(),
    WantedMachine(),
    AdvertiseWithUs(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[index],
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                    "assets/images/HomeIcon.png",
                    "Home",
                    index == 0 ?
                    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], )
                        :
                    LinearGradient(colors: [Colors.transparent,Colors.transparent], ),
                    index == 0 ? Colors.white : Color(0xff989797),),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                    "assets/images/SellMachineIcon.png",
                    "Sell\nMachine",
                    index == 1 ?
                    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], )
                    :
                    LinearGradient(colors: [Colors.transparent,Colors.transparent]),
                    index == 1 ?Colors.white : const Color(0xff989797),),
                    FloatedWidget(onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                    "assets/images/WantedMachine.png",
                        "Wanted\nMachine",
                    index == 2 ?
                    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], )
                        :
                    LinearGradient(colors: [Colors.transparent,Colors.transparent], ),
                    index == 2 ? Colors.white : Color(0xff989797),),
                FloatedWidget(onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                    "assets/images/AdvertiseIcon.png",
                    "Advertise\nwith Us",
                    index == 3 ?
                    LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], )
                        :
                    LinearGradient(colors: [Colors.transparent,Colors.transparent], ),
                    index == 3 ?Colors.white : Color(0xff989797),),
              ],
            ),
          ),
        ));
  }
}

FloatedWidget(String image, String text, LinearGradient bgColor, Color iconColor,
    {void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 65,
      width: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: bgColor
      ),
      padding: const EdgeInsets.all(2),
      child: Column(children: [
        SizedBox(height: 4,),
        Image.asset(
          image,
          color: iconColor,
          height: 25,
        ),
        SizedBox(height: 5,),
        Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            color: iconColor,
            fontSize: 8,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5,),
      ]),
    ),
  );
}
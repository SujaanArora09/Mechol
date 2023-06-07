import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/screens/seller/home_page.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class Notifications2 extends StatefulWidget {
  const Notifications2({super.key});

  @override
  State<Notifications2> createState() => _Notifications2State();
}

class _Notifications2State extends State<Notifications2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Notifications",
        backButton: true,
        bellIcon: false,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
                itemBuilder:(BuildContext context,int index){
                  return Container(
                    padding: EdgeInsets.all(20),
                    height: 72,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius: 6,backgroundColor: Color(0xffb1b1b1),),
                            SizedBox()
                          ],
                        ),
                        SizedBox(width: 13,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You have a new message from Dharmesh Raj ",
                              style: TextStyle(
                                color: Color(0xff222222),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "12hr ago",
                              style: TextStyle(
                                color: Color(0xff676767),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
          )
        ],
      )
    );
  }
}

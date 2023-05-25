import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pranjal_intern2/screens/seller/profile_page.dart';

AppBar testAppBar() {
  return AppBar(
    title: Text("TestAppBar"),
  );
}
AppBar wantedMachineAppBar(){
  return AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Wanted Machine Enquiry',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color(0xFF0582CA),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Wanted Machine Enquiry",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color(0xFF0582CA),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Wanted Machine List",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
        );
}
AppBar sellMachineAppBar() {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back),
    ),
    title: Text('Sell Machine'),
    actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
  );
}

AppBar homePageAppBar() {
  return AppBar(
    //centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Get.to(ProfilePage());
      },
      icon: Icon(Icons.menu),
    ),
    title: Padding(
      padding: const EdgeInsets.only(right: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.location_on,
            ),
          ),
          Text('Mumbai'),
        ],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.notifications,
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/login_screen/log_in_screen.dart';
import 'package:pranjal_intern2/login_screen/sign_up_screen.dart';

class WantedMachine extends StatelessWidget {
  const WantedMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: TabBarView(children: [
            Container(
              child: Text("PAGE 1"),
              color: Colors.red,
            ),
            Container(
              child: Text("PAGE 2"),
              color: Colors.blue,
            )
          ]),
        ),
      ),
    );
  }
}

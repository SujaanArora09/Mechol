import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/login_screen/log_in_screen.dart';
import 'package:pranjal_intern2/login_screen/sign_up_screen.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class WantedMachine extends StatelessWidget {
  const WantedMachine({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
          toolbarHeight: 0,
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
              child: Column(
                children: [
                  CustomTextField(width: width, hint: 'category', label: ''),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(width: width, hint: 'category', label: ''),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(width: width, hint: 'category', label: ''),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(width: width, hint: 'category', label: ''),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(width: width, hint: 'category', label: ''),
                  SizedBox(
                    height: 10,
                  ),
                  CommonButton(buttonText: 'Submit', width: width * 1.5),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    grey_contact_customer(
                      height: height,
                      width: width,
                      category: '5-15 KVA',
                      date: '12-05-23',
                      id: 'wm#00031',
                      manufacture: 'Mahindra',
                      title:
                          '15 KVA Mahindra single ph in\n Mumbai with conopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

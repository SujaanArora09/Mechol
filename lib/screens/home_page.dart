import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:pranjal_intern2/screens/machinedetails.dart';
import 'package:pranjal_intern2/screens/profile_page.dart';
import 'package:pranjal_intern2/screens/serach_page.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';
import 'package:pranjal_intern2/widgets/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
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
        ),
        drawer: Menu(),
        body: Container(
          color: Color.fromARGB(255, 226, 219, 219),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  //search box

                  InkWell(
                    onTap: () {
                      Get.to(Search_Page());
                    },
                    child: Container(
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'Search',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  //main conatiner vehical

                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/images/vehical1.png'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 13, top: 10),
                              child: Text(
                                '400 KVA Cummins',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 13, top: 10),
                              child: Text(
                                'Rs.5,00,000',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.black38,
                              ),
                              Text(
                                'Mumbai',
                                style: TextStyle(color: Colors.black38),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CommonButton(
                                buttonText: 'show Intrest',
                                width: width * 0.7,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(MachineDetails());
                                },
                                child: CommonButton(
                                  buttonText: 'View Details',
                                  width: width * 0.7,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/poster.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //grey box

                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Wanted Machine List',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 206, 202, 202),
                          borderRadius: BorderRadius.all(
                            Radius.circular(17),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '15 KVA Mahindra Single ph in Mumbai with conopy',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Text(
                                  '13-dec-2022',
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CommonButton(
                        buttonText: 'View All',
                        width: width * 2,
                        color: Colors.blue,
                      ),
                      Image.asset('assets/images/poster.png'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

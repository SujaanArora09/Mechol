import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
//import 'package:pranjal_intern2/screens/machinedetails.dart';
import 'package:pranjal_intern2/screens/seller/profile_page.dart';
import 'package:pranjal_intern2/screens/seller/serach_page.dart';
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
        // appBar: AppBar(
        //   //centerTitle: true,
        //   leading: IconButton(
        //     onPressed: () {
        //       Get.to(ProfilePage());
        //     },
        //     icon: Icon(Icons.menu),
        //   ),
        //   title: Padding(
        //     padding: const EdgeInsets.only(right: 23),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Icon(
        //             Icons.location_on,
        //           ),
        //         ),
        //         Text('Mumbai'),
        //       ],
        //     ),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Icon(
        //         Icons.notifications,
        //       ),
        //     ),
        //   ],
        // ),
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
                      Get.to(SearchPage());
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

                  vehical_container(
                    width: width,
                    image: 'assets/images/vehical1.png',
                    price: 'Rs.5,00,000',
                    title: '400 KVA cummins',
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  vehical_container(
                    width: width,
                    image: 'assets/images/vehical1.png',
                    price: 'Rs.5,00,000',
                    title: '400 KVA cummins',
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
                      greyList(
                        date: '13-dec-2022',
                        title:
                            '15 KVA Mahindra Single ph in Mumbai with conopy',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      greyList(
                        date: '13-dec-2022',
                        title:
                            '15 KVA Mahindra Single ph in Mumbai with conopy',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      greyList(
                        date: '13-dec-2022',
                        title:
                            '15 KVA Mahindra Single ph in Mumbai with conopy',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      greyList(
                        date: '13-dec-2022',
                        title:
                            '15 KVA Mahindra Single ph in Mumbai with conopy',
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
                      vehical_container(
                          width: width,
                          image: 'assets/images/vehical1.png',
                          title: '15 KVA Mahindra ',
                          price: 'Rs.5,00,000'),
                      SizedBox(
                        height: 10,
                      ),
                      vehical_container(
                          width: width,
                          image: 'assets/images/vehical1.png',
                          title: '15 KVA Mahindra Single',
                          price: 'Rs.5,00,000')
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

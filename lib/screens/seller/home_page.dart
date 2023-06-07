  import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:Sujaan_MecholApp/screens/seller/Notifications.dart';
import 'package:Sujaan_MecholApp/screens/seller/serach_page.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/menu.dart';

import 'Notifications2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {
    GlobalKey<ScaffoldState> _key = GlobalKey();

    @override
    Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;

      return Scaffold(
        key: _key,
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color(0xff0067a2),
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              _key.currentState?.openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20, right: 15),
              child: ImageIcon(AssetImage("assets/images/hamburgerIcon.png"), size: 24, color: Colors.white)
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on_sharp,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(width: 6),
              Text(
                "Mumbai",
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
              onPressed: () {
                Get.to(Notifications2());
              },
            ),
          ],
        ),
        drawer: const Menu(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const SearchPage());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Icon(
                            Icons.search,
                            color: Color(0xff0272b3),
                          ),
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                vehical_container(
                  width: width,
                  image: 'assets/images/vehical1.png',
                  price: 'Rs.5,00,000',
                  title: '400 KVA cummins',
                  location: 'Mumbai',
                ),
                SizedBox(
                  height: 15,
                ),
                vehical_container(
                  width: width,
                  image: 'assets/images/vehical1.png',
                  price: 'Rs.5,00,000',
                  title: '400 KVA cummins',
                  location: 'Mumbai',
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
                Column(
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
                              color: Color(0xff0582ca),
                              fontSize: 18,
                              fontFamily: "Poppins",
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
                      title: '15 KVA Mahindra Single ph in Mumbai with canopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    greyList(
                      date: '06-Dec-2022',
                      title: 'Mahindra 15 kVA 3 phase required in Satara',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    greyList(
                      date: '13-dec-2022',
                      title: '15 KVA Mahindra Single ph in Mumbai with canopy',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    greyList(
                      date: '02-Dec-2022',
                      title: 'Required 320KVA Generator on Rent Urgently in Latur',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CommonButton(
                      buttonText: 'View All',
                      width: width * 2,
                      color: Color(0xff0582ca),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/poster.png'),
                    SizedBox(
                      height: 20,
                    ),
                    vehical_container(
                      width: width,
                      image: 'assets/images/vehical1.png',
                      title: '15 KVA Mahindra',
                      price: 'Rs.5,00,000',
                      location: 'Mumbai',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    vehical_container(
                      width: width,
                      image: 'assets/images/vehical1.png',
                      title: '15 KVA Mahindra Single',
                      price: 'Rs.5,00,000',
                      location: 'Mumbai',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    vehical_container(
                      width: width,
                      image: 'assets/images/vehical1.png',
                      title: '15 KVA Mahindra Single',
                      price: 'Rs.5,00,000',
                      location: 'Mumbai',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }


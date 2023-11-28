  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
  import 'package:flutter/src/widgets/framework.dart';
  import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/screens/seller/HelpAndSupport.dart';
import 'package:Sujaan_MecholApp/screens/seller/Privacy_Policy.dart';
import 'package:Sujaan_MecholApp/screens/seller/chat_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/my_listing.dart';
import 'package:Sujaan_MecholApp/screens/seller/rate_us.dart';
import 'package:Sujaan_MecholApp/screens/seller/serach_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/setting_page.dart';
import 'package:Sujaan_MecholApp/screens/seller/subscription_Details.dart';
import 'package:Sujaan_MecholApp/screens/seller/t&c.dart';
import 'package:Sujaan_MecholApp/screens/seller/wishlist_page.dart';
import 'package:Sujaan_MecholApp/screens/subscription_screen.dart';

import '../screens/seller/sell_machine_1.dart';
import 'logOutDialogBox.dart';

  class Menu extends StatefulWidget {
    const Menu({super.key});

    @override
    State<Menu> createState() => _MenuState();
  }

  class _MenuState extends State<Menu> {
    @override
    Widget build(BuildContext context) {


      return Container(
        width: 280,
        child: Drawer(
            child: Padding(
              padding: const EdgeInsets.only(top:40,left: 20),
              child: Column(
                children: [
                  Column(
                    children:[
                      Row(
                        children: [
                          ClipOval(child: Image.asset("assets/images/profileImage.png",height: 85,)),
                          SizedBox(width: 18,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "+91-987643210",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(height: 3),
                              Row(
                                children:[
                                  Image.asset("assets/images/DiamondImage.png",height: 14,),
                                  SizedBox(width: 4),
                                  Text(
                                    "Premium",
                                    style: TextStyle(
                                      color: Color(0xff222222),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                  color: Color(0xff0582ca),
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.add_box_rounded,color: Color(0x66000000),
                          ),
                          title: const Text('Add Product',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/chatIcon.png",height: 20,),
                          title: const Text('Chat',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(ChatPage());
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.favorite,color: Color(0x66000000),
                          ),
                          title: const Text('Wishlist',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(WishList());
                          },
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/MyListingImage.png",height: 24,),
                          title: const Text('My Listings',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(MyListing());
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.search_sharp,color: Color(0x66000000),
                          ),
                          title: const Text('Search',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(SearchPage());
                          },
                        ),
                        ListTile(
                          leading: Icon(
                          Icons.groups_sharp,color: Color(0x66000000),
                        ),
                          title: const Text('My Leads',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/DiamondImage.png",height: 23,color:  Color(0x66000000),),
                          title: const Text('Subscription',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(SubscriptionDetails());
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.star_rounded,color: Color(0x66000000),
                          ),
                          title: const Text('Rate Us ',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(RateUs());

                          },
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/HelpAndSupport.png",height: 24,),
                          title: const Text('Help and Support',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(HelpandSupport());
                          },
                        ),
                        ListTile(
                          leading: Image.asset("assets/images/PrivacyPolicyIcon.png",height: 24,),
                          title: const Text('Privacy Policy',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(PrivacyPolicy());
                          },
                        ),
                        ListTile(
                          leading:Image.asset("assets/images/termsAndConditionsIcon.png",height: 24,),
                          title: const Text('Terms & Conditions',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(Tc());
                          },
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.settings_rounded,color: Color(0x66000000),
                          ),
                          title: const Text('Settings',
                          style: TextStyle(
                            color: Color(0xAD000000),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.to(SettingPage());
                          },
                        ),
                         ListTile(),
                         ListTile(
                          leading: Image.asset("assets/images/LogoutIcon.png",height: 24,),
                          title: const Text('Logout',
                          style: TextStyle(
                            color: Color(0xfff36f56),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),),
                          onTap: () {
                            Get.dialog(ShowDialogBox());
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      );
    }
  }

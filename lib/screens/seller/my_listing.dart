import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class MyListing extends StatefulWidget {
  const MyListing({super.key});

  @override
  State<MyListing> createState() => _MyListingState();
}

class _MyListingState extends State<MyListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "My Listing",
        backButton: true,
        bellIcon: true,
      ),
      body: Column(
        children: [
          vehical_container_without_button(
              title: '400 KVA Cummins',
              image: 'assets/images/vehical1.png',
              price: '₹ 5,00,000')
        ],
      ),
    );
  }
}

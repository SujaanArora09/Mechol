import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class MyListing extends StatefulWidget {
  const MyListing({super.key});

  @override
  State<MyListing> createState() => _MyListingState();
}

class _MyListingState extends State<MyListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        title: Text('My Listing'),
      ),
      body: Column(
        children: [
          vehical_container_without_button(
              title: '400 KVA Cummins',
              image: 'assets/images/vehical1.png',
              price: '5,00,000')
        ],
      ),
    );
  }
}

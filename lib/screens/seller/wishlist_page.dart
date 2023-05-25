import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/common_widgets.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
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
        title: Text('Wishlist'),
      ),
      body: Column(children: [
        vehical_container_without_button(
          image: 'assets/images/vehical1.png',
          price: '5,00,000',
          title: '50 KVA Wan Mounted Generator',
        )
      ]),
    );
  }
}

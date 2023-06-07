import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

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
      appBar: GradientAppBar(
        title: "WishList",
        backButton: true,
        bellIcon: true,
      ),
      body: Column(children: [
        vehical_container_without_button(
          image: 'assets/images/vehical1.png',
          price: '₹ 5,00,000',
          title: '50 KVA Wan Mounted Generator',
        )
      ]),
    );
  }
}

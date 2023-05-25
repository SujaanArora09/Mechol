import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/common_widgets.dart';

class AdavrtiseWithus extends StatefulWidget {
  const AdavrtiseWithus({super.key});

  @override
  State<AdavrtiseWithus> createState() => _AdavrtiseWithusState();
}

class _AdavrtiseWithusState extends State<AdavrtiseWithus> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        title: Text('Advertise With Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              offer_advatisement(
                width: width,
                image: 'assets/images/aeroplane.png',
                link_website: 'no',
                no_of_img: '1',
                price: '5,000',
                resolution: '300 \u00D7 150',
                size: '1',
                verification: 'yes',
                plan: 'Standard',
              ),
              SizedBox(
                height: 20,
              ),
              offer_advatisement(
                width: width,
                image: 'assets/images/rocket.png',
                link_website: 'yes',
                no_of_img: '1',
                price: '20,000',
                resolution: '600 \u00D7 600',
                size: '2',
                verification: 'yes',
                plan: 'Premium',
              ),
              SizedBox(
                height: 20,
              ),
              CommonButton(buttonText: 'Proceed', width: width),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: Icon(Icons.arrow_back),
        title: Text('Subscription'),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.2,
          ),
          Center(child: Image.asset('assets/images/crown.png')),
          Text(
            'Thank You for Subscribing',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Our team will reach out to you for \n Seller verification within 24 hours',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: Colors.black45),
          )
        ],
      ),
    );
  }
}

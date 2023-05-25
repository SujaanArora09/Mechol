import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:pranjal_intern2/widgets/carousel.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List imagelist = [
    'assets/images/vehical1.png',
    'assets/images/poster.png',
    'assets/images/vehical1.png',
    'assets/images/poster.png',
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Machine Details'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Container(
            width: width,
            child: Column(
              children: [
                CustomCarousel(imagelist[0], imagelist[1], imagelist[2],
                    imagelist[3], height * 0.30),
                // CarouselSlider(
                //   options: CarouselOptions(
                //     height: 200.0,
                //     autoPlay: true,
                //     autoPlayCurve: Curves.fastOutSlowIn,
                //   ),
                //   items: [1, 2, 3, 4].map((i) {
                //     return Builder(
                //       builder: (BuildContext context) {
                //         return Container(
                //           width: MediaQuery.of(context).size.width,
                //           margin: EdgeInsets.symmetric(horizontal: 5.0),
                //           decoration: BoxDecoration(color: Colors.amber),
                //           child: Container(
                //             child: Image.asset(
                //               imagelist[i - 1],
                //               fit: BoxFit.cover,
                //             ),
                //           ),
                //         );
                //       },
                //     );
                //   }).toList(),
                // ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'title',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'price',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      'city',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'machine id',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                greyList(title: 'title', date: 'discription'),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Additional Info',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                      additionalInfo(
                        discription: 'Type',
                        title: 'Rental power',
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Seller',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    )),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/crown.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Name'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Machine Location',
                      style: TextStyle(fontSize: 15),
                    )),

                //map//
                Container(
                  height: height * 0.5,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'seller:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            children: [
                              TextSpan(text: ' '), // Add a space here
                              TextSpan(
                                text: 'seller name',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: RichText(
                          text: TextSpan(
                            text: 'seller:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            children: [
                              TextSpan(text: ' '), // Add a space here
                              TextSpan(
                                text: 'seller name',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CommonButton(
                                buttonText: 'Chat', width: width * 0.65),
                            CommonButton(
                              buttonText: 'Call',
                              width: width * 0.65,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Rate Us',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          stars(),
                          stars(),
                          stars(),
                          stars(),
                          stars(),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.4,
                  width: width * 0.7,
                  child: Image.asset(
                    'assets/images/poster.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: height * 0.4,
                  //width: width * 0.7,
                  child: Image.asset(
                    'assets/images/poster.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Related to your search',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00'),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00'),
                vehical_container(
                    width: width * 0.9,
                    image: 'assets/images/vehical1.png',
                    title: '400 KVA',
                    price: 'RS.5,00,00')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class stars extends StatelessWidget {
  const stars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
      size: 35,
    );
  }
}

///// common widget//

class additionalInfo extends StatelessWidget {
  const additionalInfo({
    super.key,
    required this.title,
    required this.discription,
  });
  final String title;
  final String discription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            'Renatal provider',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

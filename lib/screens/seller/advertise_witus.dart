import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/common_widgets.dart';
import '../../widgets/gradientAppBar.dart';

class AdvertiseWithUs extends StatefulWidget {
  const AdvertiseWithUs({super.key});

  @override
  State<AdvertiseWithUs> createState() => _AdvertiseWithUsState();
}

class _AdvertiseWithUsState extends State<AdvertiseWithUs> {
  @override
  late int? select = null;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: GradientAppBar(
        title: 'Advertise With Us', backButton: false, bellIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (select == 1) {
                      select = 0;
                    } else {
                      select = 0;
                    }
                    setState(() {});
                  },
                  child: Container(
            //height: height * 0.4,
            padding: EdgeInsets.symmetric(horizontal: 40),
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: select == 0? Border.all( color: Color(0xff0582ca), width: 3, ):Border.all( color: Colors.transparent, width: 3, ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/aeroplane.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Standard",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rs. 5,000",
                    style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('No. if images :'),
                        Text("1"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('size :'),
                        Text("1"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Resolution :'),
                        Text("300 x 150"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Verification :'),
                        Text("yes"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Link Website :'),
                        Text("no"),
                      ],
                    ),
                  )
              ],
            ),
          ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (select == 1) {
                      select = 1;
                    } else {
                      select = 1;
                    }
                    setState(() {});
                  },
                  child: Container(
                    //height: height * 0.4,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: select == 1? Border.all( color: Color(0xff0582ca), width: 3, ):Border.all( color: Colors.transparent, width: 3, ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/images/aeroplane.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Premium",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Rs. 20,000",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('No. if images :'),
                              Text("1"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('size :'),
                              Text("2"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Resolution :'),
                              Text("600 x 600"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Verification :'),
                              Text("yes"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Link Website :'),
                              Text("yes"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: select == 1 ? 'Proceed' : 'Proceed',
                  width: width,
                  buttonColor: select == null ? Colors.grey : Colors.blue, onClick: () {
                },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

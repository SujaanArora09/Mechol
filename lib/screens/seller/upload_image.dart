import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
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
        title: Text('Sell Machine'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: width,
              decoration: BoxDecoration(color: Colors.grey),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Icon(
                    Icons.camera_alt_rounded,
                    size: 50,
                  ),
                ),
                Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.image,
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.12,
            ),
            CommonButton(buttonText: 'Proceed', width: width)
          ],
        ),
      ),
    );
  }
}

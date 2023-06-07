import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/bottomnav.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class RateUs extends StatefulWidget {
  const RateUs({super.key});

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Rate Us",
        backButton: true,
        bellIcon: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: heigh * 0.1,
            ),
            Center(
              child: Image.asset('assets/images/Frame.png'),
            ),
            Text(
              'Rate Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur.\n Faucibus odio urna rutrum vel diam eget\n cursus vitae donec.',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                star(),
                star(),
                star(),
                star(),
                star(),
              ],
            ),
            SizedBox(
              height: heigh * 0.2,
            ),
            CustomButton(text: "Submit", onClick: (){
              Get.to(BottomNavigation());
            })
          ],
        ),
      ),
    );
  }
}

class star extends StatelessWidget {
  const star({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.orange,
      size: 35,
    );
  }
}

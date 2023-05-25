import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

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
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Rate Us'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            )
          ]),
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
            CommonButton(buttonText: 'Submit', width: width)
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

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class SellMachine1 extends StatefulWidget {
  const SellMachine1({super.key});

  @override
  State<SellMachine1> createState() => _SellMachine1State();
}

class _SellMachine1State extends State<SellMachine1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.arrow_back),
      //   ),
      //   title: Text('Sell Machine'),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    CustomTextField(
                        width: width * 2,
                        hint: 'Rental provider',
                        label: 'Type'),
                    CustomTextField(
                        width: width * 2,
                        hint: '50KVA VAN Mounted Generator',
                        label:
                            'Machine Name (e.g. 50KVA Kirloskar make three ph Generator for sell)'),
                    CustomTextField(
                        width: width * 2,
                        hint: 'Expected Selling Price',
                        label: ''),
                    CustomTextField(
                        width: width * 2,
                        hint: 'Description (above bracket)',
                        label: ''),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text(
                      "Sell Machine",
                      style: TextStyle(fontSize: 14),
                    ),
                    value: "Sell Machine",
                    groupValue: "Sell Machine",
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text("Rent Machine", style: TextStyle(fontSize: 14)),
                    value: "Rent Machine",
                    groupValue: "Rent Machine",
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.34,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonButton(buttonText: 'Proceed', width: width * 2),
            )
          ],
        ),
      ),
    );
  }
}

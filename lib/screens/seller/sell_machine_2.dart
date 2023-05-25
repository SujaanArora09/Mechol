import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pranjal_intern2/widgets/common_widgets.dart';

class SellMachine2 extends StatefulWidget {
  const SellMachine2({super.key});

  @override
  State<SellMachine2> createState() => _SellMachine2State();
}

class _SellMachine2State extends State<SellMachine2> {
  late String selectedOption;
  String dropdownValue1 = "Select type";
  String dropdownValue2 = "Select category";
  String dropdownValue3 = "Select manufacture";
  String dropdownValue4 = "Select state";
  String dropdownValue5 = "Select city";
  Widget myDropDown(String dropdownValue) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton<String>(
        underline: Container(
          height: 1,
          color: Colors.blue,
        ),
        isExpanded: true,

        // iconSize: 50,

        // focusColor: Colors.red,
        // borderRadius: BorderRadius.circular(25),

        // Step 3.
        value: dropdownValue,

        // Step 4.
        items: <String>[
          'Select type',
          'Select category',
          'Select manufacture',
          'Select state',
          'Select city',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF858EA9),
              ),
            ),
          );
        }).toList(),
        // Step 5.
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
      ),
    );
  }

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
        title: Text('sell machine'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '50KVA Kirloskar make three ph Generator for sell',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    CustomTextField(
                        width: width * 2, hint: '', label: 'age in year'),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    CustomTextField(
                        width: width * 2, hint: '', label: 'age in year'),
                    CustomTextField(
                        width: width * 2, hint: '', label: 'age in year'),
                    CustomTextField(
                        width: width * 2, hint: '', label: 'age in year'),
                    myDropDown(dropdownValue1),
                    myDropDown(dropdownValue1),
                    CustomTextField(
                        width: width * 2, hint: '', label: 'age in year'),
                  ],
                ),
              ),
            ),
            CommonButton(buttonText: 'Procede', width: width),
            SizedBox(
              height: 7,
            ),
            Text(
              'skip',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

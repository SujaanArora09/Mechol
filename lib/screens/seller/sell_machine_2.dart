import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/upload_image.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class SellMachine2 extends StatefulWidget {
  const SellMachine2({super.key});

  @override
  State<SellMachine2> createState() => _SellMachine2State();
}

class _SellMachine2State extends State<SellMachine2> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
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
      appBar: GradientAppBar(
        title: " Sell Machine",
        backButton:  true,
        bellIcon: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              "50KVA Kirloskar make three ph Generator for sell",
              style: TextStyle(
                color: Color(0xff222222),
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Category*"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Manufacturer*"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),

                  SizedBox(height: 30,),
                  TextField(decoration: InputDecoration(hintText: "Age in year"),),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Condition"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Machine Status"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Fuel"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Voltage"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Phase (1/3)"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Frequency"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Speed (RPM)"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("Seller View"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  TextField(decoration: InputDecoration(hintText: "Quantity*"),),
                  SizedBox(height: 30,),
                  TextField(decoration: InputDecoration(hintText: "Keywords"),),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("State*"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropdownButton<String>(
                    hint: Text("City*"),
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,),
                  style: const TextStyle(color: Colors.blue),
                  underline: Container(
                    height: 1,
                    color: Colors.blue,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
              ),
                ),
                  SizedBox(height: 30,),
                  TextField(decoration: InputDecoration(hintText: "Additional Info"),),
                  SizedBox(height: 30,),
                ],
              ),
            ),
            CustomButton(text: "Proceed", onClick: (){
                  Get.to(UploadImage());
            }),
            SizedBox(
              height: 12,
            ),
            Text(
              "Skip",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff677294),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
          color: Color(0xff0582ca),
        ),
        isExpanded: true,

        value: dropdownValue,

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
        title: 'Search', backButton: true, bellIcon: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                            Icons.search,
                            color:Color(0xff0272b3)
                        ),
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                myDropDown(dropdownValue1),
                SizedBox(height: 20,),
                myDropDown(dropdownValue2),
                SizedBox(height: 20,),
                myDropDown(dropdownValue3),
                SizedBox(height: 20,),
                myDropDown(dropdownValue4),
                SizedBox(height: 20,),
                myDropDown(dropdownValue5),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: CustomButton(text: 'Search', onClick: (){
              //Search
            }),
          )
        ],
      ),

    );
  }
}

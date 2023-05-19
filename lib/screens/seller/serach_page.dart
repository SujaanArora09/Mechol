import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    //search_text_field
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              //textfield
              //
              myDropDown(dropdownValue1),
              myDropDown(dropdownValue2),
              myDropDown(dropdownValue3),
              myDropDown(dropdownValue4),
              myDropDown(dropdownValue5),
            ],
          ),
        ),
      ),
    );
  }
}

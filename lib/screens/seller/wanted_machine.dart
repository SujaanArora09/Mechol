import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class WantedMachine extends StatefulWidget {
  const WantedMachine({Key? key}) : super(key: key);

  @override
  _WantedMachineState createState() => _WantedMachineState();
}

class _WantedMachineState extends State<WantedMachine> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: GradientAppBar(
        title: 'Wanted Machine Enquiry',
        backButton: false,
        bellIcon: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 14),
          TabBar(
            indicatorColor: Colors.transparent,
            controller: _tabController,
            onTap: _handleTabChange,
            tabs: [
              Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: _selectedIndex == 0 ? LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], ):
                  LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffb1b1b1), Color(0xffb1b1b1),] ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Wanted Machine Enquiry",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: _selectedIndex == 1 ? LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0582ca), Color(0xff0067a2)], ):
                  LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffb1b1b1), Color(0xffb1b1b1),] ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Wanted Machine List",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CustomTextField(width: width, label: 'Category'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'Manufacturer'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'Quantity*'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'Budget Price (INR)*'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'State*'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'City*'),
                              const SizedBox(height: 10),
                              CustomTextField(width: width, label: 'Product Information (for.eg., 50KVA Kirloskar make three ph Generator for sell)'),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        CustomButton(text: "Submit", onClick: (){
                        })
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                          grey_contact_customer(
                            height: height,
                            width: width,
                            category: '5-15 KVA',
                            date: '12-05-23',
                            id: 'wm#00031',
                            manufacture: 'Mahindra',
                            title: '15 KVA Mahindra single ph in\n Mumbai with conopy',
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

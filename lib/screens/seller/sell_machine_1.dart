import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/sell_machine_2.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class SellMachine1 extends StatefulWidget {
  const SellMachine1({super.key});

  @override
  State<SellMachine1> createState() => _SellMachine1State();
}
List registrationInfoList = ['Sell Machine', 'Rent Machine'];
int selectedregistrationIndex = 0;
class _SellMachine1State extends State<SellMachine1> {

  bool stockin = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: GradientAppBar(
        title: 'Sell Machine',
        backButton: false,
        bellIcon: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Type",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(
                      width: width * 2,
                      label: 'Rental provider',
                      ),
                  SizedBox(height: 40,),
                  Text(
                    "Machine Name (e.g. 50KVA Kirloskar make three ph Generator for sell)",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(
                      width: width * 2,
                      label: '50KVA VAN Mounted Generator',
                      ),
                  CustomTextField(
                      width: width * 2,
                      label: 'Expected Selling Price',
                      ),
                  CustomTextField(
                      width: width * 2,
                      label: 'Description (above bracket)',
                      ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: ListView.builder(
                              itemCount: registrationInfoList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
                                return InkWell(
                                  onTap: () {
                                    selectedregistrationIndex = i;
                                    setState(() {});
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        selectedregistrationIndex == i
                                            ? Icons.radio_button_checked_outlined
                                            : Icons.radio_button_off_outlined,
                                        color: selectedregistrationIndex == i
                                            ? Colors.blueAccent
                                            : Colors.grey,
                                      ),
                                      SizedBox(width: 6,),
                                      Text(
                                        registrationInfoList[i],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 65,)
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: CustomButton(text: "Proceed", onClick: (){
                      Get.to(SellMachine2());
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

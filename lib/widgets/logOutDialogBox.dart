import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/login_screen/log_in_screen.dart';

import 'common_widgets.dart';

class ShowDialogBox extends StatelessWidget {
  const ShowDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 176,
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              "Are you sure you want to Logout?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Get.to(LogInScreen());
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff0582ca), width: 1),
                      ),
                      child: Center(
                        child: Text(
                          "Yes",
                          style: TextStyle(
                            color: Color(0xff0582ca),
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0582ca),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

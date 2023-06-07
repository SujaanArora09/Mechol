import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/change_password.dart';
import 'package:Sujaan_MecholApp/screens/seller/notification_setting.dart';
import 'package:Sujaan_MecholApp/screens/seller/permission.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: GradientAppBar(
        title: "Settings",
        backButton: true,
        bellIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(NotificationSetting());
              },
              child: design_row(
                height: height,
                icon: Icons.notifications,
                info: 'Notification Settings',
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(Permission());
              },
              child: design_row(
                height: height,
                icon: Icons.lock,
                info: 'Permission',
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(ChangePassword());
              },
              child: design_row(
                height: height,
                icon: Icons.password,
                info: 'Change Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//row design widget//

class design_row extends StatelessWidget {
  const design_row({
    super.key,
    required this.height,
    required this.icon,
    required this.info,
  });

  final double height;
  final IconData icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 58,
        padding: EdgeInsets.all(10),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color:  Color(0x66000000),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:16 ),
              child: Text(
                info,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0x66000000),
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
            Icon(Icons.arrow_forward_ios,color:  Color(0x7C000000),)
          ],
        ),
      ),
    );
  }
}

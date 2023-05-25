import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Setting'),
      ),
      body: Column(
        children: [
          design_row(
            height: height,
            icon: Icons.notifications,
            info: 'Notification Settings',
          ),
          design_row(
            height: height,
            icon: Icons.lock,
            info: 'Permission',
          ),
          design_row(
            height: height,
            icon: Icons.password,
            info: 'Change Password',
          ),
        ],
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
        height: height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                info,
                textAlign: TextAlign.start,
              ),
            )),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

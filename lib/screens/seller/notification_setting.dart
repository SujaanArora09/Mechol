import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  bool _light1 = false;
  bool _light2 = false;
  bool _light3 = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Notifications Settings",
        backButton: true,
        bellIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: height * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Leads Notifications'
                    ,style: TextStyle(
                          color: Color(0x66000000),
                          fontSize: 16,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),),
                  ),
                  Switch.adaptive(
                      value: _light1,
                      onChanged: (bool value) {
                        setState(() {
                          _light1 = value;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: height * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Chat Notification',
                      style: TextStyle(
                        color: Color(0x66000000),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    Switch.adaptive(
                        value: _light2,
                        onChanged: (bool value) {
                          setState(() {
                            _light2 = value;
                          });
                        })
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Apps Alerts',
                    style: TextStyle(
                      color: Color(0x66000000),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                  Switch.adaptive(
                      value: _light3,
                      onChanged: (bool value) {
                        setState(() {
                          _light3 = value;
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

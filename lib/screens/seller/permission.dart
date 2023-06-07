import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class Permission extends StatefulWidget {
  const Permission({super.key});

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  bool _light1 = false;
  bool _light2 = false;
  bool _light3 = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: GradientAppBar(
        title: "Permissions",
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
                    child: Text('Camera',
                    style: TextStyle(
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
                      child: Text('Location',
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
                    child: Text('Storage',
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

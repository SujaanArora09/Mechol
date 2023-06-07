import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Align(
          alignment: Alignment.center,
          child: Text('Profile'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Container(
            //height: 700,
            //color: Colors.red,
            child: Column(
              children: [
                Container(
                  //color: Color.fromARGB(255, 226, 219, 219),
                  child: Stack(
                    children: [
                      Container(
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('assets/images/FaceBookLogo.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 35, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Prasad Kamath',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Buyer',
                                      style: TextStyle(),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('+91-6203274281')
                                  ],
                                ),
                              )
                            ],
                          )),
                      Positioned(
                        top: 82,
                        left: 65,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Colors.blue),
                          child: Icon(
                            Icons.edit,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            //hintText: 'Email',
                            label: Text('Email'),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            //hintText: 'Email',
                            label: Text('Location'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.4,
                ),
                CommonButton(
                  buttonText: 'Save Changes',
                  width: width * 2,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

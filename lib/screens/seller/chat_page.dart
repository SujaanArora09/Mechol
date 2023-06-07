import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "Chat",
        bellIcon: true,
        backButton: true,
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child:
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(radius: 27,),
                    title: Text(
                      "Ramesh Joshi",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 16,
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "What will be the final price?",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 12,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(height:10,),
                        Text(
                          "12:02 pm",
                          style: TextStyle(
                            color: Color(0xff676767),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(radius: 27,),
                    title: Text(
                      "Ramesh Joshi",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 16,
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "What will be the final price?",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 12,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(height:10,),
                        Text(
                          "12:02 pm",
                          style: TextStyle(
                            color: Color(0xff676767),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(radius: 27,),
                    title: Text(
                      "Ramesh Joshi",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 16,
                        fontFamily: "Lexend",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "What will be the final price?",
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 12,
                      ),
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(height:10,),
                        Text(
                          "12:02 pm",
                          style: TextStyle(
                            color: Color(0xff676767),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}

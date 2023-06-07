import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Sujaan_MecholApp/widgets/CustomExpantionPannel.dart';
import 'package:Sujaan_MecholApp/widgets/gradientAppBar.dart';

class HelpandSupport extends StatefulWidget {
  const HelpandSupport({super.key});

  @override
  State<HelpandSupport> createState() => _HelpandSupportState();
}

class _HelpandSupportState extends State<HelpandSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: "Help And Support",
        backButton: true,
        bellIcon: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                "We are here to help you with anything and everything you need",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),

              Text(
                "Lorem ipsum dolor sit amet consectetur. Vitae purus egestas odio dictum arcu maecenas turpis vulputate odio.",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 15,),

              Text(
                "FAQs",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),

              Steps(),
              SizedBox(height: 15,),

              Text(
                "Contact Us",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),

              Text(
                "Phone: +91-8308820588\nWhatsapp: +91-8308820588",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10,),

              Text(
                "For Product Enquiry : enquiry@mechol.in\nFor Seller registration : support@mechol.in",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

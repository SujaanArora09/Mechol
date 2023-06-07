import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:Sujaan_MecholApp/screens/seller/product_details.dart';
import 'package:flutter/material.dart';
import 'package:Sujaan_MecholApp/widgets/common_widgets.dart';

//import '../screens/machinedetails.dart';

//button
class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonText,
    required this.width,
    this.color = Colors.blue,
  });
  final String buttonText;

  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff0582ca),
      ),
      child: Center(
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onClick;
  final String text;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final double? radius;
  final Color? bcolor;
  const CustomButton(
      {super.key,
        required this.text,
        this.bcolor,
        this.radius,
        required this.onClick,
        this.width,
        this.height,
        this.buttonColor,
        this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: bcolor ?? Colors.transparent),
                borderRadius: BorderRadius.circular(radius ?? 8.5)),
            minimumSize:
            Size(width ?? MediaQuery.of(context).size.width, height ?? 55),
            backgroundColor: buttonColor == null ? Color(0xff0582ca) : buttonColor),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: textStyle ?? const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//textfield

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.width,
    this.hint,
    required this.label,
  });
  final String? hint;
  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: width,
        child: TextField(
          keyboardType: (hint == "Mobile Number") ? TextInputType.phone : null,
          obscureText: (hint == "Password" || hint == "") ? true : false,
          decoration: InputDecoration(
            suffixIcon: (hint == "Password" || hint == "")
                ? Icon(Icons.remove_red_eye_rounded)
                : null,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            hintText: hint, hintStyle: TextStyle(),
            //hintStyle: TextStyle(color: Colors.blue),
            label: Text(
              label,
              style: const TextStyle(
                fontSize: 16  ,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
              ),
            ),

            //border: InputBorder.none,
          ),
        ));
  }
}

class vehical_container extends StatelessWidget {
  const vehical_container({
    super.key,
    required this.width,
    required this.image,
    required this.title,
    required this.price,
    required this.location,
  });

  final double width;
  final String image;
  final String title;
  final String price;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Stack(
              children: [
                Image.asset(image),
                Positioned(
                  top:15,
                    right: 15,
                    child: Icon(Icons.favorite,color: Colors.white,))
              ]),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xff0582ca),
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xff0582ca),
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(height: 4,),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.black38,
                size: 18,
              ),
              Text(
                location,
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CommonButton(
                  buttonText: 'Show Interest',
                  width: width * 0.7,
                  color: Colors.green,

                ),
              ),
              SizedBox(width: 16,),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(ProductDetails());
                  },
                  child: CommonButton(
                    buttonText: 'View Details',
                    width: width * 0.7,
                    color: Color(0xff0582ca),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//gey container

class greyList extends StatelessWidget {
  const greyList({
    super.key,
    required this.title,
    required this.date,
  });
  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: Color(0xff676767),
              fontSize: 10,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class vehical_container_without_button extends StatelessWidget {
  const vehical_container_without_button({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });
  final String title;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 10),
                child: Text(
                  title,
                  style: TextStyle(
    color: Color(0xff0582ca),
    fontSize: 14,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w600,
    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13, top: 10),
                child: Text(
                  price,
                  style: TextStyle(
    color: Color(0xff0582ca),
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
    ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black38,
                  size: 14,
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(
    color: Color(0xff677294),
    fontSize: 12,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
    ),
                ),
                SizedBox(height: 10,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//offer rocket advatisement /// without scrooll wala

class offer_advatisement extends StatelessWidget {
  const offer_advatisement({
    super.key,
    required this.width,
    required this.image,
    required this.price,
    required this.no_of_img,
    required this.size,
    required this.resolution,
    required this.verification,
    required this.link_website,
    required this.plan,
  });

  final double width;
  final String image;
  final String price;
  final String plan;
  final String no_of_img;
  final String size;
  final String resolution;
  final String verification;
  final String link_website;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 40),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(image),
          SizedBox(
            height: 10,
          ),
          Text(
            plan,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No. if images :'),
                Text(no_of_img),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('size :'),
                Text(size),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Resolution :'),
                Text(resolution),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Verification :'),
                Text(verification),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Link Website :'),
                Text(link_website),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//grey contact customer//


class grey_contact_customer extends StatefulWidget {
  const grey_contact_customer({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.date,
    required this.manufacture,
    required this.category,
    required this.id,
  }) : super(key: key);

  final double height;
  final double width;
  final String title;
  final String date;
  final String manufacture;
  final String category;
  final String id;

  @override
  _GreyContactCustomerState createState() => _GreyContactCustomerState();
}

class _GreyContactCustomerState extends State<grey_contact_customer> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height:_isExpanded ? 260 : 180 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffe2e2e2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'info',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'manufacture',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        widget.manufacture,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        widget.category,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'List Id',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        widget.id,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // AnimatedContainer(
              //   duration: Duration(milliseconds: 300),
              //   height: _isExpanded ? 80 : 0,
              //   width: MediaQuery.of(context).size.width,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Customer Details:',
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 12,
              //           fontFamily: "Poppins",
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       // Add additional customer details here
              //     ],
              //   ),
              // ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: GestureDetector(
                      onTap: _toggleExpansion,
                      child: Container(
                        height: _isExpanded ? 0 : 38,
                        width: MediaQuery.of(context).size.width -60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff0582ca),
                        ),
                        child: Center(
                          child: Text(
                            "Contact Customer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ),
                  ),
                ),
              ),
              _isExpanded ?

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Color(0x4c000000),),
                  SizedBox(height: !_isExpanded ? 0 : 10,),
                  Text(
                    "Buyer: Santosh Kulkarni",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: !_isExpanded ? 0 : 5,),
                  Text(
                    "Contact No.: +91-9876543210",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: !_isExpanded ? 0 : 5,),
                  Text(
                    "Location: Pune",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: !_isExpanded ? 0 : 13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Expanded(
                        child: Container(
                          height: _isExpanded? 36:0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff0582ca),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset("assets/images/ChatIconOutline.png",height: 16,),
                              SizedBox(width: 10),
                              Text(
                                "Chat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: _isExpanded? 36:0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff0ebe7e),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Icon(Icons.call,color: Colors.white,size: 16,),
                              SizedBox(width: 10),
                              Text(
                                "Call",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: "Lexend",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
                  :
              SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}


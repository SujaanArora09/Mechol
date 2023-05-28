import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pranjal_intern2/screens/seller/product_details.dart';

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
      height: 50,
      width: width * 0.6,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 17),
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
    return ElevatedButton(
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
    );
  }
}

//textfield

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.width,
    required this.hint,
    required this.label,
  });
  final String hint;
  final String label;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: width * 0.8,
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
              style: TextStyle(fontSize: 18),
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
  });

  final double width;
  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
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
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13, top: 10),
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CommonButton(
                  buttonText: 'show Intrest',
                  width: width * 0.7,
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Get.to(ProductDetails());
                  },
                  child: CommonButton(
                    buttonText: 'View Details',
                    width: width * 0.7,
                    color: Colors.blue,
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
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 206, 202, 202),
        borderRadius: BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                date,
                style: TextStyle(color: Colors.black38),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// wishlist vehjical container without button
///
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
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
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
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13, top: 10),
                child: Text(
                  price,
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(color: Colors.black38),
                ),
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
      width: width,
      decoration: BoxDecoration(color: Colors.white),
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

class grey_contact_customer extends StatelessWidget {
  const grey_contact_customer({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.date,
    required this.manufacture,
    required this.category,
    required this.id,
  });

  final double height;
  final double width;
  final String title;
  final String date;
  final String manufacture;
  final String category;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.3,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 211, 208, 208),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('info'), Text('Date')],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '15 KVA Mahindra single ph in\n Mumbai with conopy',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '12-05-23',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('manufacture'),
                Text('Cateegory'),
                Text('List Id'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mahindra',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text(
                  '5-15 KVA',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text(
                  'wm#00031',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            CommonButton(buttonText: 'Contact Customer', width: width * 1.5)
          ],
        ),
      ),
    );
  }
}

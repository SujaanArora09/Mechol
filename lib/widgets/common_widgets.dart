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

//vehical container

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

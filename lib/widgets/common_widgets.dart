import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//button

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonText,
    required this.width,
  });
  final String buttonText;

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width * 0.6,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
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

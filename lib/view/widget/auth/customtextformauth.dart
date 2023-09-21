import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;

  const CustomTextFormAuth({super.key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: TextFormField(
          controller: mycontroller,

          decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:  const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              label: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                  child: Text(labeltext)),
              suffixIcon: Icon(iconData),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          ),
        ),
      );
  }
}

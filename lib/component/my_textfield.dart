import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //เวลาสร้างตัวแปรใน Class เราต้องทำการ Add final field formal parameters คือ ต้องส่งparameterมาให้ไม่งั้นทำงานไม่ได้
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});

  final controller;
  final String hintText;
  final bool obscureText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.deepPurple),
            gapPadding: 10,
          ),
        ), //ใส่ข้อมูลได้
      ),
    );
  }
}

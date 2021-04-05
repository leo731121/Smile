import 'package:flutter/material.dart';

Widget customButton(String text, Function press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: Color(0xff00BFFF),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 2),
        ],
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    ),
  );
}

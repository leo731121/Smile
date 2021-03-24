import 'package:flutter/material.dart';

Widget customRichText(String txt1, txt2) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      children: [
        TextSpan(
          text: txt1,
        ),
        TextSpan(
          text: txt2,
          style: TextStyle(
              color: Color(0xff66CBDD),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ],
    ),
  );
}

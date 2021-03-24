import 'package:flutter/material.dart';

Widget boldTextBlackColor(
  String txt1,
) {
  return RichText(
    text: TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 15),
      children: [
        TextSpan(
          text: txt1,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

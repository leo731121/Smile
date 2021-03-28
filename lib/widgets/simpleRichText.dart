import 'package:flutter/material.dart';

Widget simpleBlackText(
  String txt1,
) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 15, color: Colors.black),
      children: [
        TextSpan(
          text: txt1,
        ),
      ],
    ),
  );
}

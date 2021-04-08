import 'package:flutter/material.dart';

Widget boldTextBlackColor(
  String txt1,
) {
  return Text(
    txt1,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}

Widget boldTextWhiteColor(
  String txt1,
) {
  return Text(
    txt1,
    style: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    textAlign: TextAlign.center,
  );
}

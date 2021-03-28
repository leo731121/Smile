import 'package:flutter/material.dart';

Widget imageAndTitle(IconData icons, String text) {
  return Row(
    children: [
      Icon(icons),
      Text(text),
    ],
  );
}

import 'package:flutter/material.dart';

Widget drNameAndType(String txt1, txt2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            children: [
              TextSpan(text: txt1 + '\n'),
              TextSpan(text: txt2, style: TextStyle(fontSize: 13)),
            ]),
      ),
    ],
  );
}

Widget followAndLocation(
    String icon1, String icons2, String txt1, String txt2) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            icon1,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            txt1,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            icons2,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            txt2,
            style: TextStyle(fontSize: 18),
          ),
        ],
      )
    ],
  );
}

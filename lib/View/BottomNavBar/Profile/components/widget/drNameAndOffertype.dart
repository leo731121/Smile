import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

Widget drNameAndType(String txt1, txt2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 2 * SizeConfig.textMultiplier,
            ),
            children: [
              TextSpan(text: txt1 + "\n"),
              TextSpan(
                  text: txt2,
                  style: TextStyle(fontSize: 1.5 * SizeConfig.textMultiplier)),
            ]),
      ),
    ],
  );
}

Widget followAndLocation(
  String icon1,
  String txt1,
) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            icon1,
            style: TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier),
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            txt1,
            style: TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier),
          ),
        ],
      ),
    ],
  );
}

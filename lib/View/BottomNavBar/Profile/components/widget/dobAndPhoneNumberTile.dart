import 'package:flutter/material.dart';

Widget dobAndPhoneNumber(
  String dob,
  String phoneNumber,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, top: 8),
        child: Text(dob),
      ),
      Row(
        children: [
          IconButton(icon: Icon(Icons.phone), onPressed: () {}),
          Text(phoneNumber),
        ],
      ),
    ],
  );
}

import 'package:flutter/material.dart';

Widget chooseYourPreferedTile(
  String text,
  IconData icons,
  Color clr,
) {
  return SingleChildScrollView(
      child: Row(
    children: [
      Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 1.0), blurRadius: 3)
          ],
        ),
        child: Stack(
          children: [
            Positioned(
                right: 5,
                top: 10,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                )),
            Positioned(
              left: 15,
              bottom: 15,
              child: Icon(
                icons,
                color: Colors.white,
              ),
            ),
          ],
        ),
      )
    ],
  ));
}

import 'package:flutter/material.dart';
import '../../home.dart';

BuildContext context;
Widget tileForPrference(
  String name,
  String imgPath,
  Color clr,
) {
  return Row(
    children: [
      Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                height: 200,
                width: 150,
                color: clr,
              ),
            ),
          ),
          Positioned(
              right: 40,
              top: 10,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 35,
                backgroundImage: AssetImage(imgPath),
              )),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ],
  );
}

import 'package:flutter/material.dart';

Padding buildOvalimage() {
  return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Stack(
        children: [
          ClipOval(
            clipper: MyClipper(),
            clipBehavior: Clip.antiAlias,
            child: Image.asset('assets/images/welcome13.jpg'),
          ),
          Positioned(
            top: 30,
            left: 40,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.blue[400],
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.done_outline_outlined,
                      color: Colors.blue[400],
                    )),
              ),
            ),
          ),
        ],
      ));
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(67, 0, 220, 270);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}

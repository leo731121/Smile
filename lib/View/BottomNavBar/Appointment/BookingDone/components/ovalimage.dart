import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

Widget buildOvalimage() {
  return Stack(
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
          radius: 12 * SizeConfig.imageSizeMultiplier,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 11 * SizeConfig.imageSizeMultiplier,
            backgroundColor: Colors.blue[400],
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 9 * SizeConfig.imageSizeMultiplier,
                child: Icon(
                  Icons.done_outline_outlined,
                  color: Colors.blue[400],
                )),
          ),
        ),
      ),
    ],
  );
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(20 * SizeConfig.widthMultiplier, 0,
        55 * SizeConfig.widthMultiplier, 38 * SizeConfig.heightMultiplier);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}

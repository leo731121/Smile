import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  @override
  _CustomImageState createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 2),
          ],
        ),
        child: Image.asset('assets/images/photography-1166895_640.jpg'),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var startpoints = Offset(size.width * 0.5, size.height - 30);
    var startcontrolpoints = Offset(size.width * 0.25, size.height - 50);
    path.quadraticBezierTo(startcontrolpoints.dx, startcontrolpoints.dy,
        startpoints.dx, startpoints.dy);

    var endpoint = Offset(size.width, size.height - 80.0);
    var endcontrolponts = Offset(size.width * 0.75, size.height);

    path.quadraticBezierTo(
        endcontrolponts.dx, endcontrolponts.dy, endpoint.dx, endpoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return null;
  }
}

import 'package:flutter/material.dart';

Widget buildtoplogo() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 70),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 48.5,
          backgroundImage: AssetImage('assets/images/teeth-1670434_640.png'),
        ),
      ),
    ),
  );
}

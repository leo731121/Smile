import 'package:flutter/material.dart';

Widget buildtoplogo() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage('assets/images/teeth-1670434_640.png'),
      ),
    ),
  );
}

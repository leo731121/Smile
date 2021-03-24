import 'package:flutter/material.dart';

class QuickTreatments {
  final String pic;
  final String name;
  final Color clr;

  QuickTreatments({this.pic, this.name, this.clr});
}

List<QuickTreatments> quickTreatments = [
  QuickTreatments(
      clr: Colors.green, pic: 'assets/images/home.png', name: 'Clear Aligners'),
  QuickTreatments(
      clr: Colors.purple,
      pic: 'assets/images/home.png',
      name: 'Teeth Whitening'),
  QuickTreatments(
      clr: Colors.blue[400], pic: 'assets/images/home.png', name: 'Braces')
];

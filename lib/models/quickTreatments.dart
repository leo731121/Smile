import 'package:flutter/material.dart';

class QuickTreatments {
  final String pic;
  final String name;
  final Color clr;

  QuickTreatments({this.pic, this.name, this.clr});
}

List<QuickTreatments> quickTreatments = [
  QuickTreatments(
      clr: Color(0xff5f939a),
      pic: 'assets/icons/clearAligners.jpg',
      name: 'Clear\nAligners'),
  QuickTreatments(
      clr: Color(0xff5b8a72),
      pic: 'assets/icons/teehtwhitening.jpg',
      name: 'Teeth\nWhitening'),
  QuickTreatments(
      clr: Color(0xff56776c),
      pic: 'assets/icons/braces.jpg',
      name: 'Metal\nBraces')
];

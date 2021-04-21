import 'package:flutter/material.dart';

import '../../../../../size_config.dart';

Widget descrption(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 1.8 * SizeConfig.textMultiplier,
      letterSpacing: 0.5,
    ),
  );
}

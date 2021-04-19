import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

Widget customTextButton(String text, Function ontab) {
  return TextButton(
    onPressed: ontab,
    child: Text(
      text,
      style: TextStyle(fontSize: 2 * SizeConfig.textMultiplier),
    ),
  );
}

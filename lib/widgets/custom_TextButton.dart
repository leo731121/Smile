import 'package:flutter/material.dart';

Widget customTextButton(String text, Function ontab) {
  return TextButton(
    onPressed: ontab,
    child: Text(text),
  );
}

import 'package:flutter/material.dart';

Widget customDatePicker(String hinttxt) {
  return Container(
    height: 40,
    width: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
        ]),
    child: TextField(
      readOnly: true,
      focusNode: FocusNode(),
      enableInteractiveSelection: false,
      decoration: InputDecoration(border: InputBorder.none, hintText: hinttxt),
    ),
  );
}

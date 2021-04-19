import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

Widget customButton(String text, Function press) {
  return GestureDetector(
    onTap: press,
    child: Container(
      height: 6 * SizeConfig.heightMultiplier,
      width: 60 *
          (SizeConfig.isMobilePortrait
              ? SizeConfig.widthMultiplier
              : SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: Color(0xff00BFFF),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 2),
        ],
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 2.5 * SizeConfig.textMultiplier),
      )),
    ),
  );
}

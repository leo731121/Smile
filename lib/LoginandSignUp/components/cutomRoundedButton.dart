import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color clr, textColor;

  RoundedButton({
    this.text,
    this.press,
    this.clr,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7 * SizeConfig.heightMultiplier,
      width: 80 * SizeConfig.widthMultiplier,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => clr,
            ),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 3.5 * SizeConfig.textMultiplier),
          ),
        ),
      ),
    );
  }
}

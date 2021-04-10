import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.07,
      width: size.width * 0.8,
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
            style: TextStyle(color: textColor, fontSize: 17),
          ),
        ),
      ),
    );
  }
}

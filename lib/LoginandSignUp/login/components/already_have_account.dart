import 'package:flutter/material.dart';
import 'package:smiles/constants.dart';

class AlreadyHaveanAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveanAccount({
    this.press,
    Key key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have any accout? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "Sign Up",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

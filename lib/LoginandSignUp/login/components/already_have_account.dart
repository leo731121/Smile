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
          login ? "Don't have any accout? " : "Already have an account?",
          style: TextStyle(color: kPrimaryColor),
        ),
        SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

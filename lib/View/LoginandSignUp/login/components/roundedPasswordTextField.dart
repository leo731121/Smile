import 'package:flutter/material.dart';
import 'package:smiles/constants.dart';

class RoundedPasswordTextField extends StatelessWidget {
  final String password;
  final ValueChanged<String> onChanged;
  const RoundedPasswordTextField({
    Key key,
    this.onChanged,
    this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
        hintText: password,
        hintStyle: TextStyle(fontSize: 20),
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
        border: InputBorder.none,
      ),
    );
  }
}

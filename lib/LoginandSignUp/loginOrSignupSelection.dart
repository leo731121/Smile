import 'package:flutter/material.dart';
import 'package:smiles/style.dart';

class SelectorTabLoginSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00CCDB),
      body: Column(
        children: [
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Color(0xff00CCDB),
            ),
            child: Image.asset(
              'assets/images/loginRegister.webp',
            ),
          ),
          Text(
            'Smile Brings together',
            style: boldTextWhiteColor,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

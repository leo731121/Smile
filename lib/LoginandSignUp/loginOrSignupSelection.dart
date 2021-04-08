import 'package:flutter/material.dart';
import 'package:smiles/widgets/boldTextBlackColor.dart';

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
          boldTextWhiteColor('Smile Brings together')
        ],
      ),
    );
  }
}

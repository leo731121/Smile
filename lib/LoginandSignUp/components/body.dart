import 'package:flutter/material.dart';
import 'package:smiles/LoginandSignUp/SignUp/signUp.dart';
import 'package:smiles/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/LoginandSignUp/login/login.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/style.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            top: 50,
            right: -20,
            child: Image.asset(
              'assets/images/signinScreen.png',
              height: size.height * 0.3,
            ),
          ),
          Positioned(
            top: 290,
            child: Text(
              'Smile',
              style: appNameTextStyle,
            ),
          ),
          Positioned(
            top: 360,
            left: 200,
            child: Text(
              'Brings together',
              style: appsubNameTextStyle,
            ),
          ),
          Positioned(
            bottom: 210,
            child: RoundedButton(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              text: 'Login',
              textColor: Colors.white,
              clr: kPrimaryColor,
            ),
          ),
          Positioned(
            bottom: 130,
            child: RoundedButton(
              text: 'Sign Up',
              textColor: Colors.black,
              clr: kPrimaryLightColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

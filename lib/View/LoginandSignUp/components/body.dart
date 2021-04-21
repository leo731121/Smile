import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/SignUp/signUp.dart';
import 'package:smiles/View/LoginandSignUp/login/login.dart';

import 'package:smiles/constants.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';

import 'cutomRoundedButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 100 * SizeConfig.heightMultiplier,
        width: 100 * SizeConfig.widthMultiplier,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: 30 * SizeConfig.widthMultiplier,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 20 * SizeConfig.widthMultiplier,
              ),
            ),
            Positioned(
              top: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/signinScreen.png',
                    height: 30 * SizeConfig.heightMultiplier,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        child: Text(
                          'Smile',
                          style: appNameTextStyle,
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 15,
                        child: Text(
                          'Brings together',
                          style: appsubNameTextStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4 * SizeConfig.heightMultiplier,
                  ),
                  RoundedButton(
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
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

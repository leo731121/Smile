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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
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
              top: 250,
              child: Text(
                'Smile',
                style: appNameTextStyle,
              ),
            ),
            Positioned(
              top: 320,
              left: 160,
              child: Text(
                'Brings together',
                style: appsubNameTextStyle,
              ),
            ),
            Positioned(
              top: 370,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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

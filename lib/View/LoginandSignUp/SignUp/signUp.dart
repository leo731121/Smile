import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/View/LoginandSignUp/login/components/already_have_account.dart';
import 'package:smiles/View/LoginandSignUp/login/components/roundedPasswordTextField.dart';
import 'package:smiles/View/LoginandSignUp/login/components/roundedTextField.dart';
import 'package:smiles/View/LoginandSignUp/login/components/textFieldContainer.dart';
import 'package:smiles/View/LoginandSignUp/login/login.dart';

import 'package:smiles/constants.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'components/orDivider.dart';
import 'components/signUpbody.dart';
import 'components/socialConnected.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 100 *
            (SizeConfig.isMobilePortrait
                ? SizeConfig.heightMultiplier
                : SizeConfig.widthMultiplier),
        child: SignUpBody(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: loginTextstyle,
                ),
                Image.asset(
                  'assets/images/SignUp.jpg',
                  width: 45 * SizeConfig.widthMultiplier,
                ),
                TextFieldContainer(
                  child: RoundedInputField(
                    hintText: 'Your Email',
                    icon: Icons.person,
                    onChanged: (value) {},
                  ),
                ),
                TextFieldContainer(
                  child: RoundedPasswordTextField(
                    password: "Password",
                    onChanged: (value) {},
                  ),
                ),
                TextFieldContainer(
                  child: RoundedPasswordTextField(
                    password: "Confirm Password",
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                RoundedButton(
                  clr: kPrimaryColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  text: "Sign Up",
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                AlreadyHaveanAccount(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                OrDivider(),
                SizedBox(
                  height: 3 * SizeConfig.heightMultiplier,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialConnected(
                      iconSrc: 'assets/icons/facebook.svg',
                      press: () {},
                    ),
                    SocialConnected(
                      iconSrc: 'assets/icons/twitter.svg',
                    ),
                    SocialConnected(
                      iconSrc: 'assets/icons/google-plus.svg',
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

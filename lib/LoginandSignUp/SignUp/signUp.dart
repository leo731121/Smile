import 'package:flutter/material.dart';
import 'package:smiles/LoginandSignUp/SignUp/components/signUpbody.dart';
import 'package:smiles/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/LoginandSignUp/login/components/already_have_account.dart';
import 'package:smiles/LoginandSignUp/login/components/roundedPasswordTextField.dart';
import 'package:smiles/LoginandSignUp/login/components/roundedTextField.dart';
import 'package:smiles/LoginandSignUp/login/components/textFieldContainer.dart';
import 'package:smiles/LoginandSignUp/login/login.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/style.dart';

import 'components/orDivider.dart';
import 'components/socialConnected.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SignUpBody(
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
                width: size.width * 0.7,
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
                height: size.height * 0.03,
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
                height: size.height * 0.03,
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
                height: size.height * 0.03,
              ),
              OrDivider(),
              SizedBox(
                height: size.height * 0.03,
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
    );
  }
}

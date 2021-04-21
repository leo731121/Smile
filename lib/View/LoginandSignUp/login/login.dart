import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/SignUp/signUp.dart';
import 'package:smiles/View/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/View/Onboarding_Screens/Verify_Number/verify_number.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';

import 'components/already_have_account.dart';
import 'components/loginBody.dart';
import 'components/roundedPasswordTextField.dart';
import 'components/roundedTextField.dart';
import 'components/textFieldContainer.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 100 *
            (SizeConfig.isMobilePortrait
                ? SizeConfig.widthMultiplier
                : SizeConfig.heightMultiplier),
        child: LoginBody(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: loginTextstyle,
              ),
              Center(
                child: Image.asset('assets/images/login-min-min.jpg'),
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
                  password: 'Password',
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 2.5 * SizeConfig.heightMultiplier,
              ),
              RoundedButton(
                clr: kPrimaryColor,
                text: 'LOGIN',
                textColor: Colors.white,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyNumber(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 1 * SizeConfig.heightMultiplier,
              ),
              AlreadyHaveanAccount(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

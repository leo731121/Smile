import 'package:flutter/material.dart';
import 'package:smiles/LoginandSignUp/SignUp/signUp.dart';
import 'package:smiles/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/LoginandSignUp/login/components/roundedTextField.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/style.dart';

import 'components/already_have_account.dart';
import 'components/loginBody.dart';
import 'components/roundedPasswordTextField.dart';
import 'components/textFieldContainer.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginBody(
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
              height: 25,
            ),
            RoundedButton(
              clr: kPrimaryColor,
              text: 'LOGIN',
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(
              height: 10,
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
    );
  }
}

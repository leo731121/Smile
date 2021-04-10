import 'package:flutter/material.dart';
import 'package:smiles/LoginandSignUp/SignUp/components/signUpbody.dart';
import 'package:smiles/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/LoginandSignUp/login/components/roundedPasswordTextField.dart';
import 'package:smiles/LoginandSignUp/login/components/roundedTextField.dart';
import 'package:smiles/LoginandSignUp/login/components/textFieldContainer.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/style.dart';

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
                width: size.width * 0.9,
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
                height: 15,
              ),
              RoundedButton(
                clr: kPrimaryColor,
                press: () {},
                text: "Sign Up",
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

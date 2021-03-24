import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Enter_Verification_Code/enter_Verification_Code.dart';
import 'package:smiles/widgets/buildTopLogo.dart';
import 'package:smiles/widgets/custom_button.dart';

import 'components/textfield_VerifyNumber.dart';

class VerifyNumber extends StatefulWidget {
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: buildtoplogo(),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Verify Your Phone Number',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Confirm the country code and Enter \nyour Phone number',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: VerifyNumbertxtField(),
          ),
          Expanded(
            flex: 0,
            child: customButton(
              'Next',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnterVerificationCode(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

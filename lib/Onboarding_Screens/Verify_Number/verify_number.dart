import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Enter_Verification_Code/enter_Verification_Code.dart';
import 'package:smiles/responsive.dart';
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
        body: Responsive(
      mobile: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildtoplogo(),
              Text(
                'Verify Your Phone Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Confirm the country code and Enter \nyour Phone number',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              VerifyNumbertxtField(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              customButton(
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
            ],
          ),
        ),
      ),
      tablet: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildtoplogo(),
              Text(
                'Verify Your Phone Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Confirm the country code and Enter \nyour Phone number',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              VerifyNumbertxtField(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              customButton(
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
            ],
          ),
        ),
      ),
    ));
  }
}

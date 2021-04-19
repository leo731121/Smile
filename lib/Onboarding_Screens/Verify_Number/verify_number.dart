import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Enter_Verification_Code/enter_Verification_Code.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
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
      body: Container(
        height: 100 *
            (SizeConfig.isMobilePortrait
                ? SizeConfig.heightMultiplier
                : SizeConfig.widthMultiplier),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildtoplogo(),
              Text('Verify Your Phone Number',
                  textAlign: TextAlign.center, style: verifyNumberTextStyle),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                'Confirm the country code and Enter \nyour Phone number',
                style: subHeadingVerifyNumberTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              VerifyNumbertxtField(),
              SizedBox(height: 10 * SizeConfig.heightMultiplier),
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
    );
  }
}

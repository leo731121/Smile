import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Last_Step_Add_Photo/last_Step_add_Pic.dart';
import 'package:smiles/widgets/buildTopLogo.dart';
import 'package:smiles/widgets/custom_TextButton.dart';
import 'package:smiles/widgets/custom_button.dart';
import 'package:sms_autofill/sms_autofill.dart';

class EnterVerificationCode extends StatefulWidget {
  @override
  _EnterVerificationCodeState createState() => _EnterVerificationCodeState();
}

class _EnterVerificationCodeState extends State<EnterVerificationCode> {
  @override
  Widget build(BuildContext context) {
    String number = '+1 111 111 1111';
    String duration = '0:01';
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildtoplogo(),
        Text(
          'Verification Code',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          'SMS code has been sent to\n ' + number,
          textAlign: TextAlign.center,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: PinFieldAutoFill(
            codeLength: 5,
            onCodeChanged: (val) {},
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(duration),
              customTextButton(
                'Resend',
                () {},
              ),
              IconButton(icon: Icon(Icons.call), onPressed: () {}),
              customTextButton(
                'Call me',
                () {},
              ),
            ],
          ),
        ),
        customButton('Submit', () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileImage(),
            ),
          );
        }),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Last_Step_Add_Photo/last_Step_add_Pic.dart';
import 'package:smiles/responsive.dart';
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
      body: Responsive(
        mobile: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildtoplogo(),
                Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(height: 10),
                Row(
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
                SizedBox(
                  height: 10,
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
                  'Verification Code',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(height: 10),
                Row(
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
                SizedBox(
                  height: 20,
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
            ),
          ),
        ),
      ),
    );
  }
}

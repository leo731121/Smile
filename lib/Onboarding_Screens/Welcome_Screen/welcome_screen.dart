import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Verify_Number/verify_number.dart';
import 'package:smiles/widgets/custom_TextButton.dart';

import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: customRichText('Welcome to ', 'Smile'),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 70, top: 7),
                child: Text('Your Only Dental Solution'),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/welcome13.jpg',
                      ),
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 0,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/teeth-1670434_640.png'),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Read our',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      customTextButton(' privacy policy', () {}),
                      Text(
                        " Tap 'Accept and Continue' to  ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " accept the ",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          customTextButton('Terms and Services', () {}),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: customButton('Accept and Continue', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VerifyNumber()));
              }),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(text: 'Are you a '),
                      ],
                    ),
                  ),
                  customTextButton('Doctor', () {}),
                  Text(
                    '?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

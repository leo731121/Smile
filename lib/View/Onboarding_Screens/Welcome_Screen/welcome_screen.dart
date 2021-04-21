import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/loginOrSignupSelection.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'package:smiles/widgets/custom_TextButton.dart';
import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 100 *
            (SizeConfig.isMobilePortrait
                ? SizeConfig.heightMultiplier
                : SizeConfig.widthMultiplier),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8 * SizeConfig.heightMultiplier),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customRichText('Welcome to ', 'Smile'),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: (SizeConfig.isMobilePortrait
                            ? 35 * SizeConfig.widthMultiplier
                            : 50 * SizeConfig.heightMultiplier),
                        top: 0.5 * SizeConfig.heightMultiplier),
                    child: Text(
                      'Your Only Dental Solution',
                      style: TextStyle(
                          fontSize: 2.5 * SizeConfig.heightMultiplier),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 3 * SizeConfig.heightMultiplier),
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 25 * SizeConfig.imageSizeMultiplier,
                    backgroundImage: AssetImage(
                      'assets/images/happynurse.jpg',
                    ),
                  ),
                  Positioned(
                      top: 10,
                      left: 0,
                      child: CircleAvatar(
                        radius: 7 * SizeConfig.imageSizeMultiplier,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue[400],
                          radius: 5.5 * SizeConfig.imageSizeMultiplier,
                          backgroundImage: AssetImage('assets/icons/teeth.png'),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 3 * SizeConfig.heightMultiplier),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Read our',
                        style: simpleText,
                      ),

                      /*

                      /// Here is the Gesture Detector ///
                      ///for "privacy policy"*/

                      GestureDetector(
                          onTap: () {
                            print('Privacy Policy pressed');
                          },
                          child: Text(
                            ' privacyPolicy',
                            style: simpleBlueText,
                          )),
                      Text(
                        "Tap 'Accept ",
                        style: simpleText,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.5 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "and Continue'  ",
                        style: simpleText,
                      ),

                      /*

                      /// Here is the Gesture Detector ///
                      ///for "Terms and services"*/

                      GestureDetector(
                        onTap: () {
                          print('Terms and services clicked');
                        },
                        child: Text(
                          'Terms and Services',
                          style: simpleBlueText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              customButton(
                'Accept and Continue',
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TabularLoginSignUp()));
                },
              ),
              SizedBox(
                height: 0.5 * SizeConfig.heightMultiplier,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 1.8 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w300),
                      children: [
                        TextSpan(text: 'Are you a '),
                      ],
                    ),
                  ),

                  //Are you a Doctor Button

                  customTextButton('Doctor', () {}),
                  Text(
                    '?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 2 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

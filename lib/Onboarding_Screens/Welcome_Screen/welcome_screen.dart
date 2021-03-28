import 'package:flutter/material.dart';
import 'package:smiles/Onboarding_Screens/Verify_Number/verify_number.dart';
import 'package:smiles/responsive.dart';
import 'package:smiles/widgets/custom_TextButton.dart';

import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';
import 'package:smiles/widgets/simpleBlueText.dart';
import 'package:smiles/widgets/simpleRichText.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
        mobile: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: customRichText('Welcome to ', 'Smile'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 7),
                      child: Text('Your Only Dental Solution'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 110,
                        backgroundImage: AssetImage(
                          'assets/images/welcome13.jpg',
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
                              backgroundImage: AssetImage(
                                  'assets/images/teeth-1670434_640.png'),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        simpleBlackText('Read our'),

                        /*
                     
                      /// Here is the Gesture Detector ///
                      ///for "privacy policy"*/

                        GestureDetector(
                            onTap: () {
                              print('Privacy Policy pressed');
                            },
                            child: simpleBlueText(' privacyPolicy')),
                        simpleBlackText("Tap 'Accept "),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        simpleBlackText("and Continue'  "),

                        /*
                     
                      /// Here is the Gesture Detector ///
                      ///for "Terms and services"*/

                        GestureDetector(
                          onTap: () {
                            print('Terms and services clicked');
                          },
                          child: simpleBlueText(
                            'Terms and Services',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height > 800 ? 20 : 20,
                ),
                customButton('Accept and Continue', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerifyNumber()));
                }),
                SizedBox(
                  height: 15,
                ),
                Row(
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

                    //Are you a Doctor Button

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
              ],
            ),
          ),
        ),
        tablet: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    customRichText('Welcome to ', 'Smile'),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 7),
                      child: Text('Your Only Dental Solution'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    height: 350,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: CircleAvatar(
                            radius: 250,
                            backgroundImage: AssetImage(
                              'assets/images/welcome13.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                            top: 20,
                            left: 0,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    'assets/images/teeth-1670434_640.png'),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        simpleBlackText('Read our'),

                        /*
                     
                      /// Here is the Gesture Detector ///
                      ///for "privacy policy"*/

                        GestureDetector(
                            onTap: () {
                              print('Privacy Policy pressed');
                            },
                            child: simpleBlueText(' privacyPolicy')),
                        simpleBlackText("Tap 'Accept "),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        simpleBlackText("and Continue'  "),

                        /*
                     
                      /// Here is the Gesture Detector ///
                      ///for "Terms and services"*/

                        GestureDetector(
                          onTap: () {
                            print('Terms and services clicked');
                          },
                          child: simpleBlueText(
                            'Terms and Services',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: customButton('Accept and Continue', () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyNumber()));
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
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

                        //Are you a Doctor Button

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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smiles/View/BottomNavBar/Home/components/quickTreatMentTile.dart';
import 'package:smiles/size_config.dart';

import 'components/profileimageAndBGimage.dart';
import 'components/widget/commentTile.dart';
import 'components/widget/description.dart';
import 'components/widget/drNameAndOffertype.dart';
import 'components/widget/experianceListTile.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileImageAndBGImage(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      drNameAndType('Erick Su', 'Orthoantist'),
                      followAndLocation(
                        '♥',
                        'Follow',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      descrption(
                        'Lorem ipsum dolor sit amet, consectetur adipisimg elit.In egetas velit eget metus semper fringilla.',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          'Welcome to Smile',
                          style: TextStyle(
                              color: Colors.blue[400],
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: descrption('Years of experiance 13'),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 13),
                          child: Row(
                            children: [
                              experianceListTile(
                                'assets/images/welcome13.jpg',
                              ),
                              SizedBox(
                                width: 2 * SizeConfig.widthMultiplier,
                              ),
                              experianceListTile(
                                'assets/images/welcome13.jpg',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              experianceListTile(
                                'assets/images/welcome13.jpg',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              experianceListTile(
                                'assets/images/welcome13.jpg',
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              experianceListTile(
                                'assets/images/welcome13.jpg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 13),
                  child: descrption('Offers'),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: QuickTreatmentTile(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 13),
                  child: descrption('Feedback'),
                ),
                CommentSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

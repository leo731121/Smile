import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:smiles/View/root/rootPage.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'package:smiles/widgets/buildTopLogo.dart';
import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';

class ProfileImage extends StatefulWidget {
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              buildtoplogo(),
              Column(
                children: [
                  Text(
                    'Last Step!',
                    style: verifyNumberTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Select your Name and a profile \nimage',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 2 * SizeConfig.textMultiplier),
                    ),
                  ),
                ],
              ),
              customRichText("Select ", "profile image !"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Stack(children: [
                    CircleAvatar(
                      radius: 17 * SizeConfig.imageSizeMultiplier,
                      child: Icon(Icons.add_a_photo),
                    ),
                    Positioned(
                      top: 80,
                      left: 90,
                      child: Container(
                        height: 4.5 * SizeConfig.heightMultiplier,
                        width: 8 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(360),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey, offset: Offset(0, 1.0))
                            ]),
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue[400],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4 * SizeConfig.heightMultiplier,
              ),
              customButton("That's it", () {
                pushNewScreen(
                  context,
                  screen: RootPage(
                    menuScreenContext: context,
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

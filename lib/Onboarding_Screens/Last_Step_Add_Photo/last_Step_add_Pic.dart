import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:smiles/responsive.dart';
import 'package:smiles/root/rootPage.dart';
import 'package:smiles/widgets/buildTopLogo.dart';
import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';

class ProfileImage extends StatefulWidget {
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File file;
  void pickImage() async {
    PickedFile pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      file = File(pickedFile.path.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    buildtoplogo(),
                    Column(
                      children: [
                        Text(
                          'Last Step!',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Select your Name and a profile \nimage',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    customRichText("Select ", "profile image !"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pickImage();
                          });
                        },
                        child: Stack(children: [
                          CircleAvatar(
                            radius: 60,
                            child: Icon(Icons.add_a_photo),
                          ),
                          Positioned(
                            top: 80,
                            left: 90,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 1.0))
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
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 18),
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
                      height: 40,
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
            tablet: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    buildtoplogo(),
                    Column(
                      children: [
                        Text(
                          'Last Step!',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Text(
                            'Select your Name and a profile \nimage',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    customRichText("Select ", "profile image !"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pickImage();
                          });
                        },
                        child: Stack(children: [
                          CircleAvatar(
                            radius: 60,
                            child: Icon(Icons.add_a_photo),
                          ),
                          Positioned(
                            top: 80,
                            left: 90,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(360),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 1.0))
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
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 25),
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
                      height: 70,
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
            )));
  }
}

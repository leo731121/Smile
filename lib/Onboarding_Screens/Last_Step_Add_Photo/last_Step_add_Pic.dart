import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:smiles/root/rootPage.dart';
import 'package:smiles/widgets/buildTopLogo.dart';
import 'package:smiles/widgets/custom_button.dart';
import 'package:smiles/widgets/custom_rich_text.dart';

class ProfileImage extends StatefulWidget {
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: buildtoplogo(),
            ),
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Text(
                    'Last Step!',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Select your Name and a profile \nimage',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: customRichText("Select ", "profile image !"),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      getImage();
                    });
                  },
                  child: SingleChildScrollView(
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
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
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
    );
  }
}

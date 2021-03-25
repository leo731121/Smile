import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smiles/widgets/boldTextBlackColor.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Center(
              child: boldTextBlackColor('Edit your profile'),
            ),
          ),
          Container(
            height: 140,
            width: 150,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pickImage();
                    });
                  },
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/images/welcome13.jpg'),
                    child: CircleAvatar(
                      radius: 69.9,
                      backgroundImage: file != null
                          ? AssetImage(file.path)
                          : AssetImage('assets/images/welcome13.jpg'),
                    ), // ye wali line run krwata to error ata ha
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

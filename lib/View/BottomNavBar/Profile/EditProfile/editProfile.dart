import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:smiles/style.dart';
import 'package:smiles/widgets/custom_TextFields.dart';
import 'package:smiles/widgets/datePickerField.dart';
import 'package:smiles/widgets/imageAndTitleinRow.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

DateTime currentDate = DateTime.now();

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
    String formatDate = DateFormat('yyyy-MM-dd').format(currentDate);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Center(
                child: Text(
                  'Edit your profile',
                  style: boldTextBlackColor,
                  textAlign: TextAlign.center,
                ),
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
                      backgroundImage:
                          AssetImage('assets/images/welcome13.jpg'),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              child: Column(
                children: [
                  imageAndTitle(Icons.person, 'Name'),
                  SizedBox(
                    height: 6,
                  ),
                  customTextFiled(' Name'),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      CupertinoRoundedDatePicker.show(context,
                          fontFamily: "Mail",
                          initialDatePickerMode: CupertinoDatePickerMode.date,
                          minimumYear: 1980,
                          maximumYear: 2021, onDateTimeChanged: (datetime) {
                        setState(() {
                          currentDate = datetime;
                        });
                      });
                    },
                    child: imageAndTitle(Icons.calendar_today, 'DOB'),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  customDatePicker('Date : $formatDate'),
                  SizedBox(
                    height: 20,
                  ),
                  imageAndTitle(Icons.phone, 'Phone'),
                  SizedBox(
                    height: 6,
                  ),
                  customTextFiled(' +1234567'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

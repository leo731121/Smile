import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Profile/CustomShape/customShape.dart';
import 'package:smiles/BottomNavBar/Profile/EditProfile/editProfile.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/dobAndPhoneNumberTile.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/paymentMethod.dart';
import 'package:smiles/models/dentalExperiance.dart';

class ProfileAbout extends StatefulWidget {
  @override
  _ProfileAboutState createState() => _ProfileAboutState();
}

String name = 'Eric Su',
    intro =
        'Hi there! \nLorem ipsum dolor sit amet, consectetur \nadipisimg elit.In egetas velit eget metus\nsemper fringilla.';
String dOB = 'DOB: 21-03-1993', phonenumber = '+912345678';
String edit = 'Edit';

class _ProfileAboutState extends State<ProfileAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CustomImage(),
                  Positioned(
                    right: 10,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/demodata.jpg'),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          },
                          child: Text(edit),
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      intro,
                      style: TextStyle(
                          color: Colors.black, fontSize: 16, letterSpacing: 1),
                    ),
                  ),
                  dobAndPhoneNumber('DOB: 21-03-1990', "+921234567"),
                  Center(
                    child: Container(
                      height: 1,
                      width: 250,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Dental History',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 180,
                    child: ListView.builder(
                      itemCount: dentalexperiance.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width - 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 1),
                                    blurRadius: 2)
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentMethod(),
                                  ),
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundImage: AssetImage(
                                          dentalexperiance[index].imgPath),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 15, left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(dentalexperiance[index].service),
                                        Text(dentalexperiance[index]
                                            .servicetype),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 14,
                                            ),
                                            Text(dentalexperiance[index]
                                                .location),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 12),
                                    child: Text(
                                      dentalexperiance[index].date,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  )
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

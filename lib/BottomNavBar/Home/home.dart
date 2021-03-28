import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/BottomNavBar/Home/components/chooseYourPreferedTile.dart';
import 'package:smiles/models/topDentist.dart';
import 'package:smiles/widgets/boldTextBlueColor.dart';
import 'package:smiles/widgets/simpleText.dart';
import 'components/quickTreatMentTile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: boldandSimpleText(
                  'Just Smile\n',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 10),
                child: simpleText('Choose Your Prefered'),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16, left: 4),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: chooseYourPreferedTile('My \nAppointments',
                          Icons.calendar_today, Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: chooseYourPreferedTile('QUick \nTreatments',
                          Icons.local_hospital, Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: chooseYourPreferedTile('Nearby Dentist',
                          Icons.location_on_outlined, Colors.green),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 18, bottom: 16),
            child: simpleText('Quick Treatments'),
          ),
          QuickTreatmentTile(),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: simpleText('Top Dentist'),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListView.builder(
                itemCount: topDoctors.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage(topDoctors[index].imgPath),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    topDoctors[index].name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    topDoctors[index].doctortype,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 12,
                                      ),
                                      Text(topDoctors[index].location)
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      topDoctors[index].rating,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
    @required this.stateMenu,
  }) : super(key: key);

  final GlobalKey<SideMenuState> stateMenu;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Dentist',
                  hintStyle: TextStyle(fontSize: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 25),
          child: GestureDetector(
            onTap: () => {print('profile image clicked')},
            child: CircleAvatar(
              radius: 24.8,
              backgroundImage:
                  AssetImage('assets/images/Smile Dental Logo.png'),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/selectDentist.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/BottomNavBar/Home/components/ChooseYourPreffered/stackofChoosePreffered.dart';
import 'package:smiles/models/topDentist.dart';
import 'package:smiles/widgets/boldTextBlueColor.dart';
import 'package:smiles/widgets/build_MenuSideMenuData.dart';
import 'package:smiles/widgets/simpleText.dart';
import 'components/quickTreatMentTile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

final GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: stateMenu,
      background: Color(0xff5D3CBF),
      type: SideMenuType.shrikNRotate,
      menu: buildMenuSideMenuData(),
      child: Scaffold(
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                      //   child: Row(
                      //     children: [
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.symmetric(horizontal: 8),
                      //         child: chooseYourPreferedTile('My \nAppointments',
                      //             Icons.calendar_today, Colors.blue),
                      //       ),
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.symmetric(horizontal: 8),
                      //         child: chooseYourPreferedTile(
                      //             'Quick \nTreatments',
                      //             Icons.local_hospital,
                      //             Colors.red),
                      //       ),
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.symmetric(horizontal: 8),
                      //         child: chooseYourPreferedTile('Nearby Dentist',
                      //             Icons.location_on_outlined, Colors.green),
                      //       )
                      //     ],
                      //   ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Appointment(),
                                ),
                              );
                            },
                            child: tileForPrference(
                                'My\nAppointment',
                                'assets/icons/PngItem_422926(1).png',
                                Colors.red),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectDentist(),
                                ),
                              );
                            },
                            child: tileForPrference(
                                'Quick\nTreatments',
                                'assets/icons/medicine-2801025_640.png',
                                Colors.blueGrey),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectDentist(),
                                ),
                              );
                            },
                            child: tileForPrference(
                                'Nearby\nPlaces',
                                'assets/icons/nearbydentist.png',
                                Colors.blue[800]),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                        backgroundImage: AssetImage(
                                            topDoctors[index].imgPath),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            topDoctors[index].name,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            topDoctors[index].doctortype,
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                            padding: const EdgeInsets.only(
                                                right: 20),
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
            ),
          )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.blue[200],
        ),
        onPressed: () {
          final state = stateMenu.currentState;
          state.openSideMenu();

          print('Drawer is pressed');
        },
      ),
      actions: [
        TopBar(stateMenu: stateMenu),
      ],
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

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 10.0;

    var path = Path();

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 1.9);
    path.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    path.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    path.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

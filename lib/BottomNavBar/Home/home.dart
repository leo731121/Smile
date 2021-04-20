import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/selectDentist.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/BottomNavBar/Home/components/ChooseYourPreffered/stackofChoosePreffered.dart';
import 'package:smiles/models/topDentist.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'package:smiles/widgets/build_MenuSideMenuData.dart';

import 'components/quickTreatMentTile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: stateMenu,
      background: Color(0xff5D3CBF),
      type: SideMenuType.shrikNRotate,
      menu: BuildMenuSideMenuData(),
      child: Scaffold(
        appBar: buildAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Text(
                      'Just Smile\n',
                      style: boldandSimpleBlueText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Choose Your Prefered', style: simpleText),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 16, left: 4),
                    child: Row(
                      children: [
                        ChoosePreference(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, bottom: 16),
                    child: Text(
                      'Quick Treatments',
                      style: simpleText,
                    ),
                  ),
                  QuickTreatmentTile(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Top Dentist',
                      style: simpleText,
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 1 * SizeConfig.widthMultiplier,
                    ),
                    height: 12 * SizeConfig.heightMultiplier,
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
                              radius: 7 * SizeConfig.imageSizeMultiplier,
                              backgroundImage:
                                  AssetImage(topDoctors[index].imgPath),
                            ),
                            SizedBox(
                              width: 3 * SizeConfig.widthMultiplier,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  topDoctors[index].name,
                                  style: TextStyle(
                                      fontSize: 2 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  topDoctors[index].doctortype,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize:
                                          1.5 * SizeConfig.textMultiplier),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 12,
                                    ),
                                    Text(
                                      topDoctors[index].location,
                                      style: TextStyle(
                                          fontSize:
                                              1.4 * SizeConfig.textMultiplier),
                                    )
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
                                    style: TextStyle(
                                        fontSize:
                                            1.7 * SizeConfig.textMultiplier),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }, childCount: topDoctors.length),
            ),
          ],
        ),
      ),
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
        Container(
          height: 6 * SizeConfig.heightMultiplier,
          width: 68 *
              (SizeConfig.isMobilePortrait
                  ? SizeConfig.widthMultiplier
                  : SizeConfig.heightMultiplier),
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
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Dentist',
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
            ),
            keyboardType: TextInputType.name,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 7, left: 7),
          child: GestureDetector(
            onTap: () => {print('profile image clicked')},
            child: CircleAvatar(
              radius: 22,
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

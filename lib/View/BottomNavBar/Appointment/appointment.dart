import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/View/BottomNavBar/Home/home.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'package:smiles/widgets/build_MenuSideMenuData.dart';
import 'Past/past.dart';
import 'Upcoming/upcoming.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int selectedindex = 0;
  List<Widget> apptType = [
    Upcoming(),
    Past(),
  ];
  final GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: stateMenu,
      background: Color(0xff5D3CBF),
      type: SideMenuType.shrikNRotate,
      menu: BuildMenuSideMenuData(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Center(
                  child: Text(
                'My Appointments',
                style: boldTextBlackColor,
                textAlign: TextAlign.center,
              )),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: tabSelector(),
              ),
              Expanded(
                child: (apptType[selectedindex]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabSelector() {
    return (Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        height: 5 * SizeConfig.heightMultiplier,
        width: 80 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(2.0, 2.0), blurRadius: 6)
          ],
        ),
        child: Row(
          children: [
            buildappointment(0, "Upcoming"),
            buildappointment(1, 'Past'),
          ],
        ),
      ),
    ));
  }

  Widget buildappointment(int index, String text) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Container(
            height: 5 * SizeConfig.heightMultiplier,
            width: 40 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: index == selectedindex ? Colors.blue[400] : Colors.white,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: index == selectedindex ? Colors.white : Colors.black,
                    fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/selectDentist.dart';
import 'package:smiles/BottomNavBar/Home/home.dart';
import 'package:smiles/widgets/boldTextBlackColor.dart';
import 'package:smiles/widgets/build_MenuSideMenuData.dart';
import 'package:smiles/widgets/custom_button.dart';
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
        body: Column(
          children: [
            Center(child: boldTextBlackColor('My Appointments')),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: tabSelector(),
            ),
            Expanded(
              child: (apptType[selectedindex]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 70,
              ),
              child: customButton(
                'Book Now',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SelectDentist(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabSelector() {
    return (Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        height: 40,
        width: 400,
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
            height: 40,
            width: 196,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: index == selectedindex ? Colors.blue[400] : Colors.white,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: index == selectedindex ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

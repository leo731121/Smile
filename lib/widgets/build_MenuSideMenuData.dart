import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/Upcoming/upcoming.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/paymentMethod.dart';
import 'package:smiles/pages/HelpAndSupport/helpAndSupport.dart';
import 'package:smiles/pages/Settings/settings.dart';
import 'package:smiles/pages/onlineConsultant.dart';
import 'package:smiles/widgets/sideMenutile.dart';

class BuildMenuSideMenuData extends StatelessWidget {
  final String name = 'Usama ';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/classicTeeth.webp'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Hello ' + name + '!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BuildSideMenuTileWidget(
            title: 'Home',
            iconData: (Icons.home),
            onTap: () {},
          ),
          BuildSideMenuTileWidget(
            title: 'BookAppointment',
            iconData: (Icons.calendar_today),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Appointment(),
                ),
              );
            },
          ),
          BuildSideMenuTileWidget(
            title: 'Online Consult',
            iconData: (Icons.chat),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OnlineConsult(),
                ),
              );
            },
          ),
          BuildSideMenuTileWidget(
            title: 'My dentists',
            iconData: (Icons.local_hospital),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Upcoming(),
                ),
              );
            },
          ),
          BuildSideMenuTileWidget(
            title: 'Payment',
            iconData: (Icons.payment),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentMethod(),
                ),
              );
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 2,
                width: 200,
                color: Colors.white,
              ),
            ),
          ),
          BuildSideMenuTileWidget(
            title: 'Help & Support',
            iconData: (Icons.help_outline_sharp),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpAndSuppor(),
                ),
              );
            },
          ),
          BuildSideMenuTileWidget(
            title: 'About Smile',
            iconData: (Icons.contact_mail),
            onTap: () {},
          ),
          BuildSideMenuTileWidget(
            title: 'Settings',
            iconData: (Icons.settings),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

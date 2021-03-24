import 'package:flutter/material.dart';
import 'package:smiles/widgets/sideMenutile.dart';

SingleChildScrollView buildMenuSideMenuData() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: CircleAvatar(
            radius: 25.5,
            backgroundImage: AssetImage('assets/images/teeth-1670434_640.png'),
          ),
        ),
        BuildSideMenuTileWidget(
          title: 'Home',
          iconData: (Icons.home),
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'BookAppointment',
          iconData: (Icons.calendar_today),
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'Online Consult',
          iconData: (Icons.chat),
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'My dentists',
          iconData: (Icons.local_hospital),
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'Payment',
          iconData: (Icons.payment),
          onTap: () {},
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
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'About Smile',
          iconData: (Icons.contact_mail),
          onTap: () {},
        ),
        BuildSideMenuTileWidget(
          title: 'Settings',
          iconData: (Icons.settings),
          onTap: () {},
        ),
      ],
    ),
  );
}

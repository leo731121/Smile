import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/widgets/custom_rich_text.dart';
import 'package:smiles/widgets/sideMenutile.dart';

SideMenu buildSideMenu(BuildContext context) {
  final GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();

  return SideMenu(
    key: stateMenu,
    background: Colors.blue[200],
    type: SideMenuType.shrikNRotate,
    menu: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: CircleAvatar(
              radius: 25.5,
              backgroundImage:
                  AssetImage('assets/images/teeth-1670434_640.png'),
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
    ),
    child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.blue[200],
                    ),
                    onPressed: () {
                      var stateMenu;
                      final state = stateMenu.currentState;
                      state.openSideMenu();

                      print('Drawer is pressed');
                    },
                  ),
                  Container(
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
                      padding: const EdgeInsets.all(8.0),
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
                  GestureDetector(
                    onTap: () => {print('profile image clicked')},
                    child: CircleAvatar(
                      radius: 24.8,
                      backgroundImage:
                          AssetImage('assets/images/Smile Dental Logo.png'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: customRichText('Just Smile \n\n', 'Choose Your Prefered'),
            ),
          ],
        ),
      ),
    ),
  );
}

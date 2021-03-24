import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'components/selectDentistTile.dart';

class SelectDentist extends StatelessWidget {
  final GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Select Dentist',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            selectDentistTile()
            //buildDoctorContact(),
          ],
        ),
      ),
    );
  }
}

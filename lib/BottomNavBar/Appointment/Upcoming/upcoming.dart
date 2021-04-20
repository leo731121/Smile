import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/selectDentist.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/widgets/custom_button.dart';

class Upcoming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/magnifying-glass-1020142_640.jpg',
                height: 30 * SizeConfig.heightMultiplier,
                width: 30 * SizeConfig.widthMultiplier,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have no scheduled \n appointments. Book one?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 4 * SizeConfig.heightMultiplier,
            ),
            customButton(
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';

import '../appointment.dart';
import 'components/ovalimage.dart';

class ShowBookedAppointment extends StatelessWidget {
  final String getDoctorName;
  final String selectedDate = 'March 2021', selectedTime = '2 PM';
  ShowBookedAppointment({this.getDoctorName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Hurry, Booked!',
              style: boldTextBlackColor,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 8 * SizeConfig.heightMultiplier),
              child: buildOvalimage()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
          ),
          buildappointmentShowDrNameandTime(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          RoundedButton(
            clr: Color(0xff00BFFF),
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Appointment(),
                ),
              );
            },
            text: "Back to Appointment",
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }

  // In this section doctor name,date and time is shown
  Center buildappointmentShowDrNameandTime() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: TextStyle(
                color: Colors.black, fontSize: 2 * SizeConfig.textMultiplier),
            children: [
              TextSpan(text: 'You booked an appointment with '),
              TextSpan(text: getDoctorName + '\n'),
              TextSpan(
                text: selectedDate,
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              ),
              TextSpan(text: ' at '),
              TextSpan(
                text: selectedTime,
                style: TextStyle(
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: Colors.blue[400],
                ),
              ),
            ]),
      ),
    );
  }
}

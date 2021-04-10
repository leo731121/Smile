import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/style.dart';

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
          Padding(padding: EdgeInsets.only(top: 80), child: buildOvalimage()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
          ),
          buildappointmentShowDrNameandTime(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          ButtonTheme(
            height: 40,
            minWidth: 200,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Appointment(),
                  ),
                );
              },
              elevation: 5,
              color: Color(0xff00BFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(365),
              ),
              child: Text(
                'Go To My Sppointment',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          )
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
            style: TextStyle(color: Colors.black, fontSize: 16),
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
                  color: Colors.blue[400],
                ),
              ),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/widgets/boldTextBlackColor.dart';

import 'components/ovalimage.dart';

// ignore: must_be_immutable
class ShowBookedAppointment extends StatelessWidget {
  String getDoctorName;
  String selectedDate = 'March 2021', selectedTime = '2 PM';
  ShowBookedAppointment({this.getDoctorName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: boldTextBlackColor('Hurry, Booked!'),
          ),
          Padding(padding: EdgeInsets.only(top: 40), child: buildOvalimage()),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
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

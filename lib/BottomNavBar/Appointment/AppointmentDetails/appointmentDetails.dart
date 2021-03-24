import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/BookingDone/bookedHurry.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/components/offerServices.dart';
import 'package:smiles/models/selectDentist.dart';

import 'components/drTimeSlot.dart';
import 'components/submitButton.dart';

class AppointmentDetails extends StatefulWidget {
  @override
  _AppointmentDetailsState createState() => _AppointmentDetailsState();

  final Dentist drDetails;
  AppointmentDetails({this.drDetails});
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  DateTime pickedDate;

  String formattedDate;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3, child: buildDoctorTile()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'HOW CAN WE HELP YOU?',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            GetOfferingData(),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                      children: [
                        TextSpan(text: widget.drDetails.name + ' '),
                        TextSpan(text: 'Available Slots'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('${pickedDate.day + pickedDate.month}'),
                      onTap: pickdate,
                    )
                  ],
                ),
              ),
            ),
            timetable(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('${pickedDate.day + pickedDate.month}'),
                      onTap: pickdate,
                    )
                  ],
                ),
              ),
            ),
            timeTable1(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text('${pickedDate.day + pickedDate.month}'),
                      onTap: pickdate,
                    )
                  ],
                ),
              ),
            ),
            timeTable2(),
            ListTile(
              title: Text(
                'Show Calender',
                style: TextStyle(color: Colors.blue[400]),
              ),
              onTap: pickdate,
            ),
            SubmitButtonusingIcon(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowBookedAppointment(
                      getDoctorName: widget.drDetails.name,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  pickdate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDate: pickedDate,
    );
    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  Container buildDoctorTile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(1.0, 1.0), blurRadius: 3)
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage((widget.drDetails.imgPath)),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.drDetails.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Text(
                widget.drDetails.doctortype,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 12,
                  ),
                  Text(widget.drDetails.location)
                ],
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(widget.drDetails.rating),
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.drDetails.price,
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

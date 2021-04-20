import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/BookingDone/bookedHurry.dart';
import 'package:smiles/BottomNavBar/Appointment/SelectDoctorBooking/components/offerServices.dart';
import 'package:smiles/models/selectDentist.dart';
import 'package:smiles/size_config.dart';

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
        padding: const EdgeInsets.only(bottom: 70),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildDoctorTile(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'HOW CAN WE HELP YOU?',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 1.6 * SizeConfig.textMultiplier),
                ),
              ),
              GetOfferingData(),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 1.6 * SizeConfig.textMultiplier),
                        children: [
                          TextSpan(text: widget.drDetails.name + ' '),
                          TextSpan(
                              text: 'Available Slots',
                              style: TextStyle(
                                  fontSize: 1.6 * SizeConfig.textMultiplier)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: Text('24-Nov-2020'),
              ),
              timetable(),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: Text('25-Nov-2020'),
              ),
              timeTable1(),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: Text('26-Nov-2020'),
              ),
              timeTable2(),
              ListTile(
                title: Text(
                  'Show Calender',
                  style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 1.6 * SizeConfig.textMultiplier),
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
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 10 * SizeConfig.heightMultiplier,
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
              radius: 5 * SizeConfig.imageSizeMultiplier,
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
                style: TextStyle(
                    fontSize: 2.5 * SizeConfig.textMultiplier,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.drDetails.doctortype,
                style: TextStyle(
                    fontSize: 1.6 * SizeConfig.textMultiplier,
                    color: Colors.grey),
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
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 12,
                      ),
                      Text(widget.drDetails.rating),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

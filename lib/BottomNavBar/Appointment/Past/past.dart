import 'package:flutter/material.dart';

class Past extends StatefulWidget {
  @override
  _PastState createState() => _PastState();
}

class _PastState extends State<Past> {
  PageController pageController;
  int selectedindex = 0;
  int currentPage = 0;
  String indays = 'In 3 days',
      titleofdrnameandtype = 'Consultation with Errick for tooth pain';

  String date = 'November 17', time = '11:00 AM', location = 'Main Street, 18';
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
              onPageChanged: (value) {
                setState(
                  () {
                    currentPage = value;
                  },
                );
              },
              controller: pageController,
              itemBuilder: (context, index) => animateItemBuilder(index)),
        ),
      ),
    );
  }

  Widget animateItemBuilder(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.2)).clamp(0.0, 2.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 400,
            width: Curves.easeOut.transform(value) * 400,
            child: child,
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlueAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                indays,
                style: TextStyle(color: Colors.white54),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                titleofdrnameandtype,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage:
                            AssetImage('assets/images/welcome13.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        'Eric Su',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              appointmentCardData(),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      popUpAppointmentButtonPutData(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget appointmentCardData() {
    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        appointmentCard(Icons.calendar_today, date),
        SizedBox(
          height: 4,
        ),
        appointmentCard(Icons.alarm, time),
        SizedBox(
          height: 4,
        ),
        appointmentCard(Icons.location_on, location),
      ],
    );
  }

  Widget appointmentCard(IconData iconData, String detail) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
            ),
            SizedBox(width: 5),
            Text(
              detail,
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  Widget popUpAppointmentButtonPutData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        popUpAppointmentButton('Cancel', 0),
        popUpAppointmentButton('Chat Now', 1),
      ],
    );
  }

  Widget popUpAppointmentButton(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
          selectedindex == 0 ? print('Cancel button press') : print('Chat Now');
        });
      },
      child: Container(
        height: 25,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 2, offset: Offset(0.0, 2.0))
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

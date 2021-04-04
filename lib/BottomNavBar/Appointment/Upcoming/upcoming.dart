import 'package:flutter/material.dart';

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
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have no scheduled \n appointments. Book one?',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

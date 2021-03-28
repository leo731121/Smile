import 'package:flutter/material.dart';

class PendingDuesTile extends StatefulWidget {
  @override
  _PendingDuesTileState createState() => _PendingDuesTileState();
}

class _PendingDuesTileState extends State<PendingDuesTile> {
  String name = 'Erick Su',
      drType = 'Orthodontist',
      date = '23 November',
      location = 'RYK,SadiqAbad',
      payable = '15,000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      AssetImage('assets/images/photography-1166895_640.jpg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        drType,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(date),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 14,
                      ),
                      Text(
                        location,
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              radius: 90,
              backgroundImage:
                  AssetImage('assets/images/magnifying-glass-1020142_640.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              height: 1,
              width: MediaQuery.of(context).size.width - 100,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Payable',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Rs' + payable,
                style: TextStyle(fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }
}

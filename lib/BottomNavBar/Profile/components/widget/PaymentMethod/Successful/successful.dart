import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/Successful/components/DentistProfile/dentistProfile.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/Successful/components/Review/reviewForDoctor.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/Successful/components/dropdDown.dart';
import 'package:smiles/models/successfulPayments.dart';

class SuccessfulPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _dropDown() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              actions: [
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FeedBack(),
                            ),
                          );
                        },
                        child: dropDown()),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DentistProfile(),
                            ),
                          );
                        },
                        child: dropDown1()),
                  ],
                )
              ],
            ),
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: paymentdone.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 2)
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage(paymentdone[index].imgPath),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //for name date and location
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(paymentdone[index].name),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  paymentdone[index].date,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //for icon and location
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 14,
                                    ),
                                    Text(paymentdone[index].location),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.done_sharp,
                                color: Colors.blue[400], size: 40),
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  dropDown();
                                  _dropDown();
                                  print('Pressed');
                                },
                                child: Icon(Icons.more_vert_outlined)),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width - 80,
                            color: Colors.grey),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Paid',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              paymentdone[index].price,
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

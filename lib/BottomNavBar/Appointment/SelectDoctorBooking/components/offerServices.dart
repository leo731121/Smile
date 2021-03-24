import 'package:flutter/material.dart';

class GetOfferingData extends StatefulWidget {
  @override
  _GetOfferingDataState createState() => _GetOfferingDataState();
}

//Here is the work of "How can we help you" heading.
// Here we get Oferring Data from Tile and

// Here is the Doctor tile to show the doctor Details in the top

class _GetOfferingDataState extends State<GetOfferingData> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              offeringService('Consultation', 'assets/images/home.png', 0),
              offeringService('Tooth Pain', 'assets/images/home.png', 1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              offeringService('Cleaning', 'assets/images/home.png', 2),
              offeringService('Braces', 'assets/images/home.png', 3),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              offeringService('Implantation', 'assets/images/home.png', 4),
              offeringService('Others', 'assets/images/home.png', 5),
            ],
          ),
        ),
      ],
    );
  }

  Widget offeringService(String offerservicename, String imgPath, int index) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Container(
            height: 30,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
              ],
              color: index == selectedindex ? Colors.blue[400] : Colors.white,
            ),
            child: Row(
              children: [
                Text(
                  offerservicename,
                  style: TextStyle(
                    color: index == selectedindex ? Colors.white : Colors.black,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                Image.asset(
                  imgPath,
                  color:
                      index == selectedindex ? Colors.white : Colors.blue[400],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

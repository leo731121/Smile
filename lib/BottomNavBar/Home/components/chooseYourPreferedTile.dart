import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/BottomNavBar/Home/home.dart';

// Widget chooseYourPreferedTile(
//   String text,
//   IconData icons,
//   Color clr,
// ) {
//   return SingleChildScrollView(
//       child: Row(
//     children: [
//       Container(
//         height: 150,
//         width: 150,
//         decoration: BoxDecoration(
//           color: clr,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(color: Colors.grey, offset: Offset(0, 1.0), blurRadius: 3)
//           ],
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//                 right: 5,
//                 top: 10,
//                 child: Text(
//                   text,
//                   style: TextStyle(color: Colors.white),
//                 )),
//             Positioned(
//               left: 15,
//               bottom: 15,
//               child: Icon(
//                 icons,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       )
//     ],
//   ));
// }

class MyAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Appointment()));
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: BackgroundClipper(),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.red,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/demodata.jpg',
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget filledTiletreatment() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: tile('Quick\nTreatments', 'assets/icons/appointments.png'),
  );
}

Widget filledTile() {
  return tile('My\nAppointment', 'assets/icons/appointments.png');
}

Widget tile(String name, String imgPath) {
  return Container(
    height: 260,
    child: Stack(
      children: [
        Positioned(
          top: 0,
          left: 50,
          child: Image.asset(
            imgPath,
            color: Colors.black,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 5,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}

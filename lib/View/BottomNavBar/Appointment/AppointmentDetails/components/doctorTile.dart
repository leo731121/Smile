// import 'package:flutter/material.dart';
// import 'package:smiles/models/selectDentist.dart';

// // ignore: must_be_immutable
// class DoctorTile extends StatefulWidget {
//   @override
//   _DoctorTileState createState() => _DoctorTileState();

//   Dentist drDetails;
//   DoctorTile({this.drDetails});
// }

// class _DoctorTileState extends State<DoctorTile> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       height: 90,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(color: Colors.grey, offset: Offset(1.0, 1.0), blurRadius: 3)
//         ],
//       ),
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 5),
//             child: CircleAvatar(
//               radius: 30,
//               backgroundImage: AssetImage((widget.drDetails.imgPath)),
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 widget.drDetails.name,
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//               ),
//               Text(
//                 widget.drDetails.doctortype,
//                 style: TextStyle(fontSize: 16, color: Colors.grey),
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.location_on,
//                     size: 12,
//                   ),
//                   Text(widget.drDetails.location)
//                 ],
//               )
//             ],
//           ),
//           Spacer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10),
//                   child: Text(widget.drDetails.rating),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   color: Colors.grey,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   widget.drDetails.price,
//                   style: TextStyle(fontSize: 10),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

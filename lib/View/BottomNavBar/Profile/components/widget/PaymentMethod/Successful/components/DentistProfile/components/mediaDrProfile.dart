import 'package:flutter/material.dart';
import 'package:smiles/models/dentistProfileMedia.dart';

Widget mediaDoctorProfile() {
  return Container(
    height: 60,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dentistprofilemedia.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  height: 50,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      dentistprofilemedia[index].impPath,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
}

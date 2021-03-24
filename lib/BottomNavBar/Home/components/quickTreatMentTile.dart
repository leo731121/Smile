import 'package:flutter/material.dart';
import 'package:smiles/models/quickTreatments.dart';

class QuickTreatmentTile extends StatelessWidget {
  const QuickTreatmentTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: quickTreatments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: quickTreatments[index].clr,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(quickTreatments[index].pic),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    quickTreatments[index].name,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

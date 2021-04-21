import 'package:flutter/material.dart';
import 'package:smiles/models/quickTreatments.dart';
import 'package:smiles/size_config.dart';

class QuickTreatmentTile extends StatelessWidget {
  const QuickTreatmentTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30 * SizeConfig.heightMultiplier,
      width: 100 *
          (SizeConfig.isMobilePortrait
              ? SizeConfig.widthMultiplier
              : SizeConfig.heightMultiplier),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: quickTreatments.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 45 *
                  (SizeConfig.isMobilePortrait
                      ? SizeConfig.widthMultiplier
                      : SizeConfig.heightMultiplier),
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
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 40,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(quickTreatments[index].pic),
                      radius: 10 * SizeConfig.imageSizeMultiplier,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      quickTreatments[index].name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 2 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold),
                    ),
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

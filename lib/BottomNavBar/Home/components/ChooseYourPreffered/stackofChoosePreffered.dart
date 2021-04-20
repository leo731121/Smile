import 'package:flutter/material.dart';
import 'package:smiles/models/quickTreatments.dart';
import 'package:smiles/size_config.dart';
import '../../home.dart';

class ChoosePreference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 27 * SizeConfig.heightMultiplier,
        width: 96 *
            (SizeConfig.isMobilePortrait
                ? SizeConfig.widthMultiplier
                : SizeConfig.heightMultiplier),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: choosePreferenceList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 45 * SizeConfig.widthMultiplier,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: BackgroundClipper(),
                      child: Container(
                        height: 30 * SizeConfig.heightMultiplier,
                        width: 40 * (SizeConfig.widthMultiplier),
                        color: choosePreferenceList[index].clr,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 40,
                      top: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: (SizeConfig.isMobilePortrait
                            ? 10 * SizeConfig.imageSizeMultiplier
                            : 55.0),
                        backgroundImage:
                            AssetImage(choosePreferenceList[index].image),
                      )),
                  Positioned(
                      bottom: 10,
                      left: 20,
                      child: Text(
                        choosePreferenceList[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 2 * SizeConfig.textMultiplier,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            );
          },
        ));
  }
}

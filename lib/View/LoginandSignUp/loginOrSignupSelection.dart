import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

import 'components/body.dart';

class TabularLoginSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 100 *
              (SizeConfig.isMobilePortrait
                  ? SizeConfig.heightMultiplier
                  : SizeConfig.widthMultiplier),
          width: 100 *
              (SizeConfig.isMobilePortrait
                  ? SizeConfig.widthMultiplier
                  : SizeConfig.heightMultiplier),
          child: Body()),
    );
  }
}

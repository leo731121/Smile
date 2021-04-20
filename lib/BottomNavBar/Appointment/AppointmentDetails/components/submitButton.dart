import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

class SubmitButtonusingIcon extends StatelessWidget {
  const SubmitButtonusingIcon({
    Key key,
    this.press,
  }) : super(key: key);
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 8 * SizeConfig.heightMultiplier,
            width: 60 * SizeConfig.widthMultiplier,
            child: GestureDetector(
              onTap: press,
              child: Container(
                height: 8 * SizeConfig.heightMultiplier,
                width: 20 * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Color(0xff00BFFF),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 2),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Finish',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 3 * SizeConfig.textMultiplier),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 22 * SizeConfig.widthMultiplier,
          top: 1 * SizeConfig.heightMultiplier,
          child: CircleAvatar(
            radius: 6 * SizeConfig.imageSizeMultiplier,
            backgroundColor: Colors.white,
            child: Icon(Icons.done),
          ),
        )
      ],
    );
  }
}

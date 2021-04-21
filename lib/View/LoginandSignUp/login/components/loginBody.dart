import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

class LoginBody extends StatelessWidget {
  final Widget child;
  const LoginBody({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: 100 * SizeConfig.widthMultiplier,
        height: 100 * SizeConfig.heightMultiplier,
        child: Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
                print('Pressed');
              },
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/main_top.png',
                  width: 35 * SizeConfig.widthMultiplier),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: 4 * SizeConfig.widthMultiplier,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

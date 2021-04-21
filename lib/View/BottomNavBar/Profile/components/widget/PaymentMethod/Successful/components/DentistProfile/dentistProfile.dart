import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';
import 'package:smiles/style.dart';
import 'components/mediaDrProfile.dart';

class DentistProfile extends StatelessWidget {
  final String doctorName = 'Amelia';
  final String aboutDescription =
      'Lorem ipsum dolor sit amet, consectetur adipisimg elit.In egetas velit eget metus semper fringilla.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff555555),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
                width: 100 * SizeConfig.widthMultiplier,
                height: 100 * SizeConfig.heightMultiplier),
            painter: HeaderCurvedontainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  doctorName,
                  style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 30 * SizeConfig.widthMultiplier,
                height: 20 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 6,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white30,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/demodata.jpg'))),
              )
            ],
          ),
          Positioned(
            bottom: -10 * SizeConfig.heightMultiplier,
            child: Column(
              children: [
                Container(
                  height: 40 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 2),
                          blurRadius: 2)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Media',
                          style: simpleText,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        mediaDoctorProfile(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'About',
                          style: simpleText,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(aboutDescription)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'View full Profile',
                          style:
                              TextStyle(color: Colors.blue[400], fontSize: 18),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue[400],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderCurvedontainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(HeaderCurvedontainer oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(HeaderCurvedontainer oldDelegate) => false;
}

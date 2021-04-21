import 'package:flutter/material.dart';

Widget dropDown() {
  return Column(
    children: [
      downloadInvoice(
        Icon(
          Icons.download_rounded,
          size: 40,
          color: Colors.blue[400],
        ),
        'Download Invoice',
      ),
    ],
  );
}

Widget dropDown1(String name, IconData icon) {
  return Column(
    children: [
      dentistProfile(
        name,
        Icon(
          icon,
          size: 40,
          color: Colors.blue[400],
        ),
      ),
    ],
  );
}

Widget downloadInvoice(Icon icons, String text) {
  return Center(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: icons,
            ),
            Container(
              height: 25,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Colors.blue[400],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget dentistProfile(String text, Icon icons) {
  return Center(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 25,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Colors.blue[400],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
                ],
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: icons,
            ),
          ],
        )
      ],
    ),
  );
}

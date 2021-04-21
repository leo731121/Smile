import 'package:flutter/material.dart';
import 'package:smiles/View/BottomNavBar/Profile/components/profileImageAbout.dart';

class ProfileImageAndBGImage extends StatelessWidget {
  const ProfileImageAndBGImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18 + 40,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/photography-1166895_640.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.height * 0.18,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileAbout(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/welcome13.jpg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

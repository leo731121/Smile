import 'package:flutter/material.dart';
import 'package:smiles/size_config.dart';

class ChatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Eric Su", status = 'Online';

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //here we design Chat bar
            Center(
              child: Container(
                height: 7 * SizeConfig.heightMultiplier,
                width: 90 * SizeConfig.widthMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, offset: Offset(0, 1), blurRadius: 2)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'assets/images/photography-1166895_640.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 2 * SizeConfig.textMultiplier),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              status,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 1.5 * SizeConfig.textMultiplier),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red[400],
                ),
                child: Center(
                  child: Text(
                    'Pre Appoinmtment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.8 * SizeConfig.textMultiplier),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1 * SizeConfig.textMultiplier,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 50,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 5 * SizeConfig.textMultiplier,
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              blurRadius: 2)
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.emoji_emotions),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Your text here...',
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.attach_file),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.camera_alt),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 50,
                    child: Container(
                      height: 4 * SizeConfig.textMultiplier,
                      width: 4 * SizeConfig.textMultiplier,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 2)
                          ]),
                      child: CircleAvatar(
                        radius: 2 * SizeConfig.imageSizeMultiplier,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/chat/components/messageSendingStye.dart';

class ChatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Eric Su", status = 'Online';
    var red = Colors.red;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //here we design Chat bar
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 20,
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
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              status,
                              style: TextStyle(color: Colors.grey),
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
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 50,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 40,
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 1),
                                blurRadius: 2)
                          ]),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 25,
                          width: 100,
                          child: Bubble(
                            color: Color.fromRGBO(212, 234, 244, 1.0),
                            child: Text('TODAY',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 11.0)),
                          ),
                        ),
                      ),
                      Bubble(
                        child: Text('Hello, World!'),
                      ),
                      Bubble(
                        margin: BubbleEdges.only(top: 10),
                        color: Color.fromRGBO(225, 255, 199, 1.0),
                        child:
                            Text('Hello, World!', textAlign: TextAlign.right),
                      ),
                      Bubble(
                        margin: BubbleEdges.only(top: 10),
                        child: Text('Hi, developer!'),
                      ),
                    ],
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

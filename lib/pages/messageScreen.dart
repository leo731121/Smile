import 'package:flutter/material.dart';
import 'package:smiles/pages/OnlineConsultModel/onlineConsult.dart';

class MessageScreen extends StatefulWidget {
  final OnlineConsult chatDrDetail;
  MessageScreen({this.chatDrDetail});
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChatAppBar(context),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 60,
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
                  bottom: 60,
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
              ],
            ),
          )
        ],
      ),
    );
  }

  // Chat Screen AppBar

  PreferredSize buildChatAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          color: Colors.white,
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(widget.chatDrDetail.imgPath),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  widget.chatDrDetail.name,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
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
    );
  }
}

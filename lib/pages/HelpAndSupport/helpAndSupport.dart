import 'package:flutter/material.dart';

class HelpAndSuppor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Card(
                child: Container(
                  height: MediaQuery.of(context).size.height - 70,
                  width: MediaQuery.of(context).size.width - 10,
                  child: Center(
                    child: Container(
                      color: Colors.white.withOpacity(0.6),
                      height: 500,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'Help And Support',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'An online consultation enables you to contact a GP or other health professional over the internet. It saves you waiting for an appointment or going to the GP surgery.\n\nYou can tell your GP about your health using a smartphone, tablet or computer. The type of online consultation you have depends on your GP surgery. Many GP surgeries use a questionnaire or an online form.\n\nAfter your online consultation, your GP surgery will follow up. It can be an:\n\nElectronic Message\n\nphone or video call\n\nface-to-face appointment',
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Thank You',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 25),
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(1), BlendMode.dstATop),
                          image:
                              AssetImage('assets/images/bgHelpSupport.webp'))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

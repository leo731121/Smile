import 'package:flutter/material.dart';

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
            height: 50,
            width: 210,
            child: GestureDetector(
              onTap: press,
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
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
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 120,
          top: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.done),
          ),
        )
      ],
    );
  }
}

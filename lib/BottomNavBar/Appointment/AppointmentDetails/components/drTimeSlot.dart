import 'package:flutter/material.dart';

Widget timetable() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('11 AM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('1 PM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('3 PM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: drTimeOffering('4 PM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                child: drTimeOffering(
                  '11 PM',
                  true,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget timeTable1() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('10 AM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('11 AM', false),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget timeTable2() {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('9 AM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('10 AM', false),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: drTimeOffering('11 AM', false),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget drTimeOffering(String time, bool isselcted) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isselcted ? Colors.blue[400] : Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(1.0, 1.0), blurRadius: 3)
        ],
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(color: isselcted ? Colors.white : Colors.blue[400]),
        ),
      ),
    ),
  );
}

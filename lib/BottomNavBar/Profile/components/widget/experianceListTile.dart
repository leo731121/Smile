import 'package:flutter/material.dart';

Widget experianceListTile(String imgPath) {
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(0, 1), blurRadius: 2),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imgPath,
        fit: BoxFit.cover,
      ),
    ),
  );
}

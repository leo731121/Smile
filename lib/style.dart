import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smiles/size_config.dart';

TextStyle appNameTextStyle = TextStyle(
  fontSize: 6 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: Color(0xFF6F35A5),
  fontFamily: 'IndieFlower',
);

TextStyle appsubNameTextStyle = TextStyle(
  fontSize: 1.8 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.normal,
  color: Color(0xFF6F35A5),
  fontFamily: 'IndieFlower',
);

TextStyle boldTextBlackColor = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

TextStyle boldTextWhiteColor =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
TextStyle simpleText =
    TextStyle(color: Colors.black, fontSize: 1.5 * SizeConfig.textMultiplier);
TextStyle boldandSimpleBlueText = TextStyle(
  fontSize: 3 * SizeConfig.textMultiplier,
  fontWeight: FontWeight.bold,
  color: Color(0xff66CBDD),
);
TextStyle simpleBlueText = TextStyle(
    color: Colors.blue[400], fontSize: 1.8 * SizeConfig.textMultiplier);
TextStyle loginTextstyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier);
TextStyle invoicePersonName = GoogleFonts.poppins(
    fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black);
TextStyle paymentinvoiceTextStyle = GoogleFonts.poppins(
    fontSize: 2 * SizeConfig.textMultiplier, color: Colors.grey);

TextStyle priceInvoiceTextStyle =
    GoogleFonts.poppins(fontSize: 14, color: Colors.black);

TextStyle verifyNumberTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 3 * SizeConfig.textMultiplier);

TextStyle subHeadingVerifyNumberTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.w300);

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smiles/View/LoginandSignUp/components/cutomRoundedButton.dart';
import 'package:smiles/constants.dart';
import 'package:smiles/style.dart';

import 'components/bgShape.dart';

class Invoice extends StatelessWidget {
  final String drName = "Giorgi Rurua";
  final String price = "\$1,500";
  final String recipientName = "Usama";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 25,
            left: 5,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: CustomPaint(
              size: Size(size.width * 0.88, 300),
              painter: BgStyle(),
            ),
          ),
          Positioned(
            top: 20,
            left: 70,
            child: Image.asset(
              'assets/images/personimage.png',
              height: size.height * 0.6,
            ),
          ),
          Positioned(
            top: 130,
            left: -20,
            child: CustomPaint(
              size: Size(size.width * 0.65, 200),
              painter: FrontDesign(),
            ),
          ),
          Positioned(
            top: 260,
            left: 5,
            child: Container(
              height: size.height,
              width: size.width - 10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drName,
                      style: invoicePersonName,
                    ),
                    Text(
                      "Senior Doctor",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Recipient Name",
                      style: paymentinvoiceTextStyle,
                    ),
                    Text(
                      recipientName,
                      style: priceInvoiceTextStyle,
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Text(
                      "Payment",
                      style: paymentinvoiceTextStyle,
                    ),
                    Text(
                      price,
                      style: priceInvoiceTextStyle,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: RoundedButton(
                        clr: kPrimaryColor,
                        press: () {},
                        text: "Download",
                        textColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

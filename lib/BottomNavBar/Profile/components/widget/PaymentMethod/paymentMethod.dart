import 'package:flutter/material.dart';
import 'package:smiles/style.dart';
import 'Pending/pending.dart';
import 'Successful/successful.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

int selectedindex = 0;
List<Widget> paymentway = [
  PendingPayment(),
  SuccessfulPayment(),
];

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Center(
                child: Text(
                  'Payment',
                  style: boldTextBlackColor,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            tabSelectorForGateway(),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: paymentway[selectedindex],
            )),
          ],
        ),
      ),
    );
  }

  Widget tabSelectorForGateway() {
    return (Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        height: 40,
        width: 410,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(2.0, 2.0), blurRadius: 6)
          ],
        ),
        child: Row(
          children: [
            paymentGateWay(0, "Pending"),
            paymentGateWay(1, 'Successful'),
          ],
        ),
      ),
    ));
  }

  Widget paymentGateWay(int index, String name) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Container(
            height: 40,
            width: 196,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: index == selectedindex ? Colors.blue[400] : Colors.white,
            ),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    color: index == selectedindex ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

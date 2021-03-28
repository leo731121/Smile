import 'package:flutter/material.dart';
import 'package:smiles/BottomNavBar/Profile/components/widget/PaymentMethod/Pending/components/pentingDuesTile.dart';

class PendingPayment extends StatefulWidget {
  @override
  _PendingPaymentState createState() => _PendingPaymentState();
}

class _PendingPaymentState extends State<PendingPayment> {
  PageController pageController;
  int selectedindex = 0;
  int currentPage = 0;

  final String dues = '15000';

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 1.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
              onPageChanged: (value) {
                setState(
                  () {
                    currentPage = value;
                  },
                );
              },
              controller: pageController,
              itemBuilder: (context, index) => animateItemBuilder(index)),
        ),
      ),
    );
  }

  Widget animateItemBuilder(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.2)).clamp(0.0, 1.0);
        }
        return SizedBox(
          height: Curves.easeOut.transform(value) * 400,
          width: Curves.easeOut.transform(value) * 400,
          child: child,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 400,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 2), blurRadius: 3)
                ],
              ),
              child: PendingDuesTile(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: GestureDetector(
              onTap: () {
                print('Pay is pressed');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 2)
                      ],
                      color: Colors.blue[400],
                    ),
                    child: Stack(children: [
                      Center(
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 1),
                                    blurRadius: 4)
                              ],
                              color: Colors.white),
                        ),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.blue[400],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 2)
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Pay ' + dues,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

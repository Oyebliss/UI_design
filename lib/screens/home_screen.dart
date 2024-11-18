import 'package:d_design/screens/trans_card.dart';
import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        SolarIconsBold.dollar,
                        size: 70,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(SolarIconsOutline.widgetAdd),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Financial Dashboard',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$10,7 k',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Total Balance',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -75,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              child: Icon(
                                SolarIconsOutline.linkMinimalistic,
                                size: 28,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Positioned(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.black,
                              child: Icon(
                                SolarIconsBold.chart,
                                size: 28,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 170,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          SolarIconsOutline.arrowRightUp,
                          size: 40,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Withdraw',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 170,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          SolarIconsOutline.arrowLeftDown,
                          size: 40,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Deposit',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TransactionCard(),
          ],
        ),
      ),
    );
  }
}

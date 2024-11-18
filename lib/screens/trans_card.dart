import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TransactionCard extends StatefulWidget {
  const TransactionCard({super.key});

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  final List<String> months = ['August', 'September', 'October'];

  int currentMonthIndex = 1;
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: PageView.builder(
                        itemCount: months.length,
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            currentMonthIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Center(
                            child: Text(
                              months[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: index == currentMonthIndex
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: months.length,
                        effect: SlideEffect(
                          activeDotColor: Colors.black,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '**** 4527',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '37',
                              style: TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'This month',
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                          width: 150,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -40,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('images/avatar.jpg'),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('images/av.jpg'),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('images/av1.jpg'),
                                ),
                              ),
                              Positioned(
                                left: 80,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.black,
                                  child: Text(
                                    '+7',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

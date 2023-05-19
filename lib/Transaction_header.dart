import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Container_model.dart';
import 'package:flutter_application_1/device_dimenssions.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Transaction_model_Month.dart';
import 'Transaction_model_Year.dart';
import 'Transaction_model_week.dart';

class Transaction_header extends StatefulWidget {
  @override
  State<Transaction_header> createState() => _Transaction_headerState();
}

class _Transaction_headerState extends State<Transaction_header> {
  late final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF79c3f0)),
                minimumSize: MaterialStateProperty.all(Size(
                    DeviceDimenssions.deviceWidth * 0.3,
                    DeviceDimenssions.deviceHeight * 0.05)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Weak',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              onPressed: () {
                setState(() {
                  pageController.jumpToPage(0);
                });
              },
            ),
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF79c3f0)),
                minimumSize: MaterialStateProperty.all(Size(
                    DeviceDimenssions.deviceWidth * 0.3,
                    DeviceDimenssions.deviceHeight * 0.05)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Month',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              onPressed: () {
                setState(() {
                  pageController.jumpToPage(1);
                });
              },
            ),
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF79c3f0)),
                minimumSize: MaterialStateProperty.all(Size(
                    DeviceDimenssions.deviceWidth * 0.3,
                    DeviceDimenssions.deviceHeight * 0.05)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Year',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              onPressed: () {
                setState(() {
                  pageController.jumpToPage(2);
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: DeviceDimenssions.deviceHeight * 0.32,
          child: PageView(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: [
              Center(
                child: Transaction_model_week(),
              ),
              Center(
                child: Transaction_model_month(),
              ),
              Center(
                child: Transaction_model_Year(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xFF79c3f0),
              dotColor: Color(0xFF2d5da9),
              dotHeight: 20,
              dotWidth: 20,
              spacing: 16,
            ),
          ),
        ),
      ],
    );
  }
}

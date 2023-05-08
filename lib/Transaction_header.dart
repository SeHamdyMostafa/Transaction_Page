import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Container_model.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Dimention.dart';
import 'Transaction_model_Month.dart';
import 'Transaction_model_Year.dart';
import 'Transaction_model_week.dart';

class Transaction_header extends StatefulWidget {
  @override
  State<Transaction_header> createState() => _Transaction_headerState();
}

class _Transaction_headerState extends State<Transaction_header> {
  late final  pageController=PageController();
  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff2cda86)),
                minimumSize: MaterialStateProperty.all(const Size(100, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Weak', style: TextStyle(fontSize: 24)),
              onPressed: () {
                
                setState(() {
                  pageController.jumpToPage(0);
                  Dimention.height_week =
                      (Dimention.height_week == 70 ? 100 : 70);
                });
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff2cda86)),
                minimumSize: MaterialStateProperty.all(const Size(100, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Month',
                  style: TextStyle(
                    fontSize: 24,
                  )),
              onPressed: () {
                setState(() {
                  pageController.jumpToPage(1);
                  Dimention.height_month =
                      (Dimention.height_month == 70 ? 110 : 70);
                });
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff2cda86)),
                minimumSize: MaterialStateProperty.all(const Size(100, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text('Year', style: TextStyle(fontSize: 24)),
              onPressed: () {
                setState(() {
                  pageController.jumpToPage (2);
                  Dimention.height_year =
                      (Dimention.height_year == 70 ? 100 : 70);
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 250,
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
        SizedBox(height: 20,),
        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child:SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect:  ExpandingDotsEffect(
                  activeDotColor: Color(0xff2cda86),
                  dotColor: Colors.deepPurple.shade100,
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

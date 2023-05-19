import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Container_model.dart';
import 'package:flutter_application_1/device_dimenssions.dart';
import 'Page_View.dart';
import 'Transaction_header.dart';
import 'Transaction_model_Year.dart';
import 'Transaction_model_week.dart';

class Transation_page extends StatelessWidget {
  const Transation_page({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: TransactionsPage());
  }
}

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceDimenssions.init(c: context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFE6E4ED),
          body: Container(
              width: DeviceDimenssions.deviceWidth,
              height: DeviceDimenssions.deviceHeight,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Transaction_header(),
                ],
              ))),
    );
  }
}

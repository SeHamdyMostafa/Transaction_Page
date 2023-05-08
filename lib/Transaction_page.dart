import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Container_model.dart';
import 'package:flutter_application_1/Dimention.dart';
import 'Page_View.dart';
import 'Transaction_header.dart';
import 'Transaction_model_Year.dart';
import 'Transaction_model_week.dart';
import 'package:flutter_application_1/config/device_dimenssions.dart';
class Transation_page extends StatelessWidget {
  const Transation_page({super.key});
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: TransactionsPage()
    );
  }

}

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
       DeviceDimenssions.context = context;
        DeviceDimenssions.initDeviceDimensions();
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: Container(
            width: DeviceDimenssions.width,
            height: DeviceDimenssions.height,
            child: Column(children: [
                // Row of options 
                SizedBox(height: 20,),
                Transaction_header(),
                
                // page view
              
            ],)
          )
        ),
      );
  }
}


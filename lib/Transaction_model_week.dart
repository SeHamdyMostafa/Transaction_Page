import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Container_model.dart';
import 'device_dimenssions.dart';
import 'Transaction_header.dart';

class Transaction_model_week extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFfdfeff),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 10,
          ), //BoxShadow
          //BoxShadow
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                height: 25   ,
              ),
              Text(
                "100%",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "75%",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "50%",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "25%",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "0%",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Container_model(
              content: 'Sat', Height: DeviceDimenssions.deviceHeight * 0.15),
          Container_model(
              content: 'San', Height: DeviceDimenssions.deviceHeight * 0.12),
          Container_model(
              content: 'Mon', Height: DeviceDimenssions.deviceHeight * 0.13),
          Container_model(
              content: 'Tue', Height: DeviceDimenssions.deviceHeight * 0.11),
          Container_model(
              content: 'Wed', Height: DeviceDimenssions.deviceHeight * 0.09),
          Container_model(
              content: 'Thu', Height: DeviceDimenssions.deviceHeight * 0.14),
          Container_model(
              content: 'Fai', Height: DeviceDimenssions.deviceHeight * 0.11),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Container_model.dart';
import 'device_dimenssions.dart';
import 'Transaction_header.dart';

class Transaction_model_Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
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
      


      child: ListView(
        scrollDirection: Axis.horizontal,
        children:[
          SizedBox(
                height: 10,
              ),

           Column(
            children: [
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
          SizedBox(width: 10),
          Container_model(
            content: 'Jan',
            Height: DeviceDimenssions.deviceHeight * 0.15,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Feb',
            Height: DeviceDimenssions.deviceHeight * 0.10,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Mar',
            Height: DeviceDimenssions.deviceHeight * 0.09,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Apr',
            Height: DeviceDimenssions.deviceHeight * 0.14,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'May',
            Height: DeviceDimenssions.deviceHeight * 0.11,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Jun',
            Height: DeviceDimenssions.deviceHeight * 0.09,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Jul',
            Height: DeviceDimenssions.deviceHeight * 0.16,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Aug',
            Height: DeviceDimenssions.deviceHeight * 0.10,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Sep',
            Height: DeviceDimenssions.deviceHeight * 0.13,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Oct',
            Height: DeviceDimenssions.deviceHeight * 0.09,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Nov',
            Height: DeviceDimenssions.deviceHeight * 0.12,
          ),
          SizedBox(width: 20),
          Container_model(
            content: 'Dec',
            Height: DeviceDimenssions.deviceHeight * 0.14,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

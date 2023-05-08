import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Container_model.dart';
import 'Dimention.dart';
import 'Transaction_header.dart';
import 'config/device_dimenssions.dart';

class Transaction_model_Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromARGB(255, 213, 208, 208),
        boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                     blurRadius: 10,
                    ), //BoxShadow
                   //BoxShadow
                  ],
      ),

      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: <Widget>[
          SizedBox(width: 0),
          Container_model(
            content: 'Jan',
            Height: Dimention.height_year * 1.6,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Feb',
            Height: Dimention.height_year * 1.2,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Mar',
            Height: Dimention.height_year * 1.6,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Apr',
            Height: Dimention.height_year * 1.7,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'May',
            Height: Dimention.height_year * 1.3,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Jun',
            Height: Dimention.height_year * 1.8,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Jul',
            Height: Dimention.height_year * 1.5,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Aug',
            Height: Dimention.height_year * 1.2,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Sep',
            Height: Dimention.height_year * 1.7,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Oct',
            Height: Dimention.height_year * 1.3,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Nov',
            Height: Dimention.height_year * 1.8,
          ),
          SizedBox(width: 10),
          Container_model(
            content: 'Dec',
            Height: Dimention.height_year * 1.5,
          ),
        ],
      ),
    );
  }
}

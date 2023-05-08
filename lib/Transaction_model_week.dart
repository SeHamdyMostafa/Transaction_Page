import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Container_model.dart';
import 'Dimention.dart';
import 'Transaction_header.dart';
import 'config/device_dimenssions.dart';

class Transaction_model_week extends StatelessWidget {
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
      

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container_model(content: 'Sat',Height: Dimention.height_week * 1.6,),
          Container_model(content: 'San',Height: Dimention.height_week * 1.2,),
          Container_model(content: 'Mon',Height: Dimention.height_week * 1.6,),
          Container_model(content: 'Tue',Height: Dimention.height_week * 1.7,),
          Container_model(content: 'Wed',Height: Dimention.height_week * 1.3,),
          Container_model(content: 'Thu',Height: Dimention.height_week * 1.8,),
          Container_model(content: 'Fai',Height: Dimention.height_week * 1.5,),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Container_model.dart';
import 'Dimention.dart';
import 'config/device_dimenssions.dart';

class Transaction_model_month extends StatelessWidget {
  const Transaction_model_month({super.key});

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
          Container_model(content: 'Week 1',Height: Dimention.height_month * 1.6,),
          Container_model(content: 'Week 2',Height: Dimention.height_month * 1.2,),
          Container_model(content: 'Week 3',Height: Dimention.height_month * 1.6,),
          Container_model(content: 'Week 4',Height: Dimention.height_month * 1.7,),
          
        ],
      ),
    );
  }
}
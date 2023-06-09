import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'device_dimenssions.dart';

class Container_model extends StatefulWidget {
  Container_model({required this.content, required this.Height});
  late String content;
  late double Height;

  @override
  State<Container_model> createState() => _Container_modelState();
}

class _Container_modelState extends State<Container_model> {
  double containerHieght = 0;

  @override
  void initState() {
    Timer(
      Duration(milliseconds: 250),
      () {
        containerHieght = widget.Height;
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      
      children: [
        
        Stack(children: [
          Container(
            width: 20,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xFF6cb0ed)),
          ),
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              width: 20,
              height: containerHieght,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFF2d5da9)),
            ),
          ),
        ]),
        SizedBox(
          height: 12,
        ),
        Text(widget.content,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
        SizedBox(
          height: 12,
        )
      ],
    );
  }
}

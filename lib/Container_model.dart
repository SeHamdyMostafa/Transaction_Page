import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dimention.dart';

class Container_model extends StatelessWidget {
  Container_model({required this.content, required this.Height});
  late String content;
  late double Height;
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                width: 30,
                height: Height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
              ),
              Text(content,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  )),
            ],
          );
  }
}
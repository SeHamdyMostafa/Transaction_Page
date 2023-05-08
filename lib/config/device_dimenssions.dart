import 'package:flutter/cupertino.dart';

class DeviceDimenssions{
  static late double width;
  static late double height;
  static late BuildContext context;
  static void initDeviceDimensions(){
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
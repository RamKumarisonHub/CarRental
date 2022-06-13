import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';

Widget getTtile(String title, double fontsize,FontWeight fontWeight ) {
  return Text(
    title,
    style:  TextStyle(
        fontSize: fontsize, fontWeight: fontWeight, color: black),
  );
}

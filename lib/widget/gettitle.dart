import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';

Widget getTtile(String title, double fontsize) {
  return Text(
    title,
    style:  TextStyle(
        fontSize: fontsize, fontWeight: FontWeight.w500, color: black),
  );
}

import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget textfield(
  BuildContext context,
  String hintText,
) {
  return Neumorphic(
    margin: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
    style: NeumorphicStyle(
        color: neumorphicColor,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
        intensity: 1,
        depth: NeumorphicTheme.embossDepth(context)),
    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
    child: Container(
      alignment: Alignment.center,
      height: 55,
      child: TextFormField(
        autofocus: false,
        cursorColor: Colors.black,
        style: const TextStyle(
            fontSize: 12, color: black, fontWeight: FontWeight.w500),
        decoration:
            InputDecoration(hintText: hintText, border: InputBorder.none),
      ),
    ),
  );
}

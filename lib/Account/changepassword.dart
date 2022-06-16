import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title:
            getTtile('Change Password', 16, FontWeight.w500, 'Lab Grotesque'),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/arrow_back.png'))),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 14, left: 19, right: 19),
        child: Container(
          height: 500,
          child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                lightSource: LightSource.topLeft,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                intensity: 1,
                color: neumorphicColor),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 24,
                right: 23,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTtile(
                      'Old Password', 14, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 11,
                  ),
                  textfield(context, 'x x x x x'),
                  const SizedBox(
                    height: 23,
                  ),
                  getTtile(
                      'New Password', 14, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 11,
                  ),
                  textfield(context, 'x x x x x'),
                  const SizedBox(
                    height: 23,
                  ),
                  getTtile(
                      'Confirm Password', 14, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 11,
                  ),
                  textfield(context, 'x x x x x'),
                  const SizedBox(
                    height: 51,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          color: neumorphicColor,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(27.5)),
                          intensity: 12,
                          depth: NeumorphicTheme.depth(context)),
                      child: Align(
                          alignment: Alignment.center,
                          child: getTtile('Set Password', 14, FontWeight.w500,
                              'Lab Grotesque')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

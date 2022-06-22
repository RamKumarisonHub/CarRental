import 'package:car_rental/Account/changepassword.dart';
import 'package:car_rental/Account/editaccount.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.only(left: 19, top: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profileWidget(width),
              const SizedBox(
                height: 94,
              ),
              textfield(context, 'Enter Email id', false),
              const SizedBox(
                height: 22,
              ),
              InviteButton(),
              const SizedBox(
                height: 26.86,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget InviteButton() {
    return Container(
      height: 55,
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(27.5)),
            intensity: 12,
            depth: NeumorphicTheme.depth(context)),
        child: Align(
            alignment: Alignment.center,
            child: getTtile(
                'Invite A Friend', 14, FontWeight.w500, 'Lab Grotesque')),
      ),
    );
  }

  Widget profileWidget(double width) {
    return Container(
      width: width,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            intensity: 1,
            depth: NeumorphicTheme.depth(context)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 22, left: 23, right: 24, bottom: 25),
          child: Column(
            children: [
              Container(
                width: 110,
                height: 110,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      color: neumorphicColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(15)),
                      intensity: 1,
                      depth: NeumorphicTheme.depth(context)),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/Profile.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              getTtile('Alexis enache', 16, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 9,
              ),
              getTtile('Alexisenache02@gmail.com', 12, FontWeight.w500,
                  'Lab Grotesque'),
              const SizedBox(
                height: 9,
              ),
              getTtile(
                  '1000Km - Beginner', 12, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditAccount()));
                  },
                  child: buildButton('Edit Account')),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangePassword()));
                  },
                  child: buildButton('Change Password'))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String title) {
    return Container(
      height: 55,
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            intensity: 12,
            depth: NeumorphicTheme.depth(context)),
        child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getTtile(title, 14, FontWeight.w500, 'Lab Grotesque'),
                  Container(
                    child: Image.asset(
                      'assets/images/backfill.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

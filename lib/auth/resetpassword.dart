import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/bottomimg.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        color: backgroundcolor,
        child: Stack(
          children: [
            bottamImg(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 23, left: 18, right: 18),
              child: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 52.46,
                        width: 180,
                      ),
                      const SizedBox(
                        height: 15.54,
                      ),
                      const Text(
                        'KEEPER OF THE KEYS',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                      const SizedBox(
                        height: 122,
                      ),
                      resetpasswordWidget(width)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget resetpasswordWidget(double width) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          intensity: 12,
          shadowLightColor: const Color(0xffFAF9F9),
          color: neumorphicColor),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 24, left: 24, right: 25, bottom: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                child: getTtile('Reset Password', 16)),
            const SizedBox(
              height: 31,
            ),
            getTtile('New Password', 14),
            const SizedBox(
              height: 11,
            ),
            Neumorphic(
              margin:
                  const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
              style: NeumorphicStyle(
                  color: neumorphicColor,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                  intensity: 12,
                  depth: NeumorphicTheme.embossDepth(context)),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
              child: TextFormField(
                cursorColor: Colors.black,
                style: const TextStyle(
                    fontSize: 12, color: black, fontWeight: FontWeight.w500),
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            getTtile('Confirm Password', 14),
            const SizedBox(
              height: 11,
            ),
            Container(
              height: 55,
              child: Neumorphic(
                margin:
                    const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
                style: NeumorphicStyle(
                    color: neumorphicColor,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                    // intensity: 30,
                    depth: NeumorphicTheme.depth(context)),
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: 'x',
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      color: Color(0xffB8B8B8),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 8),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "xxxxx",
                    hintStyle: TextStyle(
                        color: Color(0xffB8B8B8),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: 8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Container(
              height: 55,
              width: width,
              child: Neumorphic(
                style: NeumorphicStyle(
                    color: neumorphicColor,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(27)),
                    intensity: 12,
                    depth: NeumorphicTheme.depth(context)),
                child: Align(
                    alignment: Alignment.center,
                    child: getTtile('Set Password', 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:car_rental/login/otherecoverymethod.dart';
import 'package:car_rental/support/supporteam.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/bottomimg.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
          width: width,
          color: backgroundcolor,
          child: Stack(
            children: [
              bottamImg(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 165,
                  left: 18,
                  right: 18,
                ),
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
                          height: 131,
                        ),
                        forgotWidget(width),
                        const SizedBox(
                          height: 23,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget forgotWidget(double width) {
    return Container(
      width: width,
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            lightSource: LightSource.topLeft,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
            intensity: 1,
            shadowLightColor: const Color(0xffFAF9F9),
            color: neumorphicColor),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 31, left: 24, right: 25, bottom: 54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: getTtile(
                    'Forgot Password', 16, FontWeight.w500, 'Lab Grotesque'),
              ),
              const SizedBox(
                height: 31,
              ),
              getTtile('Email', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 11,
              ),
              textfield(context, ''),
              const SizedBox(
                height: 37,
              ),
              Container(
                height: 55,
                width: width,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      color: neumorphicColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(27)),
                      intensity: 12,
                      depth: NeumorphicTheme.depth(context)),
                  child: Align(
                      alignment: Alignment.center,
                      child: getTtile(
                          'Submit', 14, FontWeight.w500, 'Lab Grotesque')),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Align(
                  alignment: Alignment.center,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtherecoveryMethod()));
                      },
                      child: getTtile('Other recovery methods', 14,
                          FontWeight.w500, 'Lab Grotesque'))),
              const SizedBox(
                height: 18,
              ),
              Align(
                  alignment: Alignment.center,
                  child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SupportTeam()));
                      },
                      child: getTtile('Reach out to support', 14,
                          FontWeight.w500, 'Lab Grotesque'))),
            ],
          ),
        ),
      ),
    );
  }
}

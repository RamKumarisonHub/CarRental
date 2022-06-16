import 'package:car_rental/Signup/moredetails.dart';
import 'package:car_rental/Signup/signupotp.dart';
import 'package:car_rental/login/signIn.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/bottomimg.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: backgroundcolor,
        child: Stack(
          children: [
            bottamImg(),
            Padding(
              padding: EdgeInsets.only(top: 51, left: 18, right: 18),
              child: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
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
                        height: 32,
                      ),
                      getTtile('WELCOME', 22, FontWeight.w500, 'Lab Grotesque'),
                      const SizedBox(
                        height: 6,
                      ),
                      getTtile('Continue with your Details', 14,
                          FontWeight.w500, 'Lab Grotesque'),
                      const SizedBox(
                        height: 56,
                      ),
                      createAccount(width),
                      const SizedBox(
                        height: 19,
                      ),
                      loginTypes(width),
                      const SizedBox(
                        height: 41,
                      ),
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

  Widget loginTypes(double width) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
          intensity: 1,
          shadowLightColor: const Color(0xffFAF9F9),
          color: neumorphicColor),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 21, left: 23, right: 19.55, bottom: 19),
        child: Column(
          children: [
            getTtile("Log In With", 14, FontWeight.w500, 'Lab Grotesque'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 55,
                  width: 135.5,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          color: neumorphicColor,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(27.5)),
                          intensity: 1,
                          depth: NeumorphicTheme.depth(context)),
                      child: Image.asset('assets/images/Google.png')),
                ),
                Container(
                  height: 55,
                  width: 135.5,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                          color: neumorphicColor,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(27.5)),
                          intensity: 1,
                          depth: NeumorphicTheme.depth(context)),
                      child: Image.asset('assets/images/instra.png')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget createAccount(double width) {
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
              const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  child: getTtile(
                      'Create Account', 16, FontWeight.w500, 'Lab Grotesque')),
              const SizedBox(
                height: 31,
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getTtile('Name', 12, FontWeight.w500, 'Lab Grotesque'),
                        const SizedBox(
                          height: 13,
                        ),
                        Container(
                            width: width / 2.5,
                            child: textfield(context, 'Aliexis enache')),
                      ],
                    ),
                    const SizedBox(
                      width: 16.65,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getTtile(
                              'Surname', 12, FontWeight.w500, 'Lab Grotesque'),
                          const SizedBox(
                            height: 13,
                          ),
                          Container(
                              width: width / 2,
                              child: textfield(context, 'Aliexis enache')),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              getTtile('Email', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 3,
              ),
              textfield(context, 'x x x x x'),
              const SizedBox(
                height: 23,
              ),
              getTtile('Phone Number', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 3,
              ),
              textfield(context, '0123456789'),
              const SizedBox(
                height: 23,
              ),
              getTtile('Password', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 3,
              ),
              textfield(context, 'x x x x x'),
              const SizedBox(
                height: 23,
              ),
              getTtile(
                  'Confirm Password', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 3,
              ),
              textfield(context, 'x x x x x'),
              const SizedBox(
                height: 38,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupOTP()));
                },
                child: Container(
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
                        child: getTtile(
                            'Sign Up', 14, FontWeight.w500, 'Lab Grotesque')),
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Align(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Already have a account?',
                      style: const TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                            text: 'Sign In',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.w500))
                      ])
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

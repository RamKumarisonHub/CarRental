import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: backgroundcolor,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                child: Row(
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          colors: [
                            taier1color.withOpacity(0.31),
                            taier2color.withOpacity(1.0)
                          ],
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        'assets/images/taier.png',
                        width: 154,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(
                          colors: [
                            taier1color.withOpacity(0.31),
                            taier2color.withOpacity(1.0)
                          ],
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        'assets/images/taier.png',
                        width: 154,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Align(
                // alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 52,
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
                            color: Color(0xff161821)),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'WELCOME',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff161821),
                          letterSpacing: 7,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "Let's Start",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff161821),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      Container(
                        width: width,
                        child: Neumorphic(
                          style: const NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Color(0xffFAF9F9),
                              color: Color(0xffE5E5E5)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 24, left: 24, right: 25, bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Log In',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff161821),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  height: 31,
                                ),
                                const Text(
                                  "Email/Phone Number",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff161821)),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Neumorphic(
                                  margin: const EdgeInsets.only(
                                      left: 8, right: 8, top: 2, bottom: 4),
                                  style: NeumorphicStyle(
                                      color: Color(0xffE5E5E5),
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(15)),
                                      intensity: 30,
                                      depth:
                                          NeumorphicTheme.embossDepth(context)),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 18),
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff161821),
                                        fontWeight: FontWeight.w500),
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                                const SizedBox(
                                  height: 23,
                                ),
                                const Text(
                                  "Password",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff161821)),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Container(
                                  height: 55,
                                  child: Neumorphic(
                                    margin: const EdgeInsets.only(
                                        left: 8, right: 8, top: 2, bottom: 4),
                                    style: NeumorphicStyle(
                                        color: Color(0xffE5E5E5),
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(15)),
                                        // intensity: 30,
                                        depth: NeumorphicTheme.depth(context)),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 18),
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      style: const TextStyle(
                                          color: Color(0xffB8B8B8),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          letterSpacing: 8),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "xxxxx",
                                          hintStyle: const TextStyle(
                                              color: Color(0xffB8B8B8),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              letterSpacing: 8),
                                          suffixIcon: Container(
                                            margin: const EdgeInsets.only(
                                                top: 6, bottom: 8),
                                            width: 41,
                                            height: 41,
                                            child: Neumorphic(
                                              style: const NeumorphicStyle(
                                                  color: Color(0xffDDDCDC)),
                                              child: Image.asset(
                                                'assets/images/quesmark.png',
                                                width: 18,
                                                height: 17,
                                              ),
                                            ),
                                          )),
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
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff161821),
                                        fontWeight: FontWeight.w500),
                                    style: NeumorphicStyle(
                                        color: const Color(0xffE5E5E5),
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(27)),
                                        // intensity: 30,
                                        depth: NeumorphicTheme.depth(context)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Log In",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

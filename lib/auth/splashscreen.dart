import 'package:car_rental/auth/Intro/introscreen.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _callSplashScreen();
  }

  _callSplashScreen() async {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0XFFF000000),
          // alignment: Alignment.center,
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
                          'assets/images/img3.png',
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
                          'assets/images/img3.png',
                          width: 154,
                        ),
                      ),
                    ],
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/splashlogo.png',
                      height: 52,
                      width: 180,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "KEEPER OF THE KEYS",
                      style: TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

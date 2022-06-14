import 'package:car_rental/auth/forgetpassword.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/bottomimg.dart';
import 'package:car_rental/widget/gettitle.dart';
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

      resizeToAvoidBottomInset: false,
      body: Container(
        height: height,
        width: width,
        color: backgroundcolor,
        child: Stack(
          children: [
            bottamImg(),
            Padding(
              padding:const  EdgeInsets.only(
                  top: 51, left: 18, right: 18, bottom: 33),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 52.48,
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
                    const Text(
                      'WELCOME',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
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
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 56,
                    ),
                    logInwidget(width),
                    const SizedBox(
                      height: 18,
                    ),
                    typesofLogin(width),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget logInwidget(double width) {
    return Container(
      width: width,
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            lightSource: LightSource.topLeft,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
            intensity: 1,
            // shadowLightColor: const Color(0xffFAF9F9),
            color: neumorphicColor
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, left: 24, right: 25, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center, child: getTtile('Log In', 16,FontWeight.w500)),
              const SizedBox(
                height: 31,
              ),
              getTtile('Email/Phone Number', 14,FontWeight.w500),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
                child: TextFormField(
                  autofocus: false,
                  cursorColor: Colors.black,
                  style: const TextStyle(
                      fontSize: 12, color: black, fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              getTtile('Password', 14,FontWeight.w500),
              const SizedBox(
                height: 11,
              ),
              Container(
                height: 55,
                child: Neumorphic(
                  margin: const EdgeInsets.only(
                      left: 8, right: 8, top: 2, bottom: 4),
                  style: NeumorphicStyle(
                      color: neumorphicColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(15)),
                      // intensity: 30,
                      depth: NeumorphicTheme.depth(context)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: 'x',
                    cursorColor: Colors.black,
                    style: const TextStyle(
                        color: black,
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
                        suffixIcon: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 2, bottom: 6,right: 0),
                            width: 41,
                            height: 41,
                            child: Neumorphic(
                                style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(7)),
                                    color:const Color(0xffDDDCDC)),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '?',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffDD3155)),
                                  ),
                                )),
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
                  style: NeumorphicStyle(
                      color: neumorphicColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(27)),
                      intensity: 12,
                      depth: NeumorphicTheme.depth(context)),
                  child: Align(
                      alignment: Alignment.center,
                      child: getTtile('Log In', 14,FontWeight.w500)),
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: black),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffDD3155)))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget typesofLogin(double width) {
    return Container(
      width: width,
      child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
              // lightSource: LightSource.topLeft,
              intensity: 1,
              color: neumorphicColor
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 21, bottom: 19),
            child: Column(
              children: [
                const Text(
                  "Log In With",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14, color: black),
                ),
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
                              // lightSource: LightSource.topLeft,
                              color: const Color(0xffE5E5E5),
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(27.5)),
                              intensity: 0.94,
                              depth: NeumorphicTheme.depth(context)),
                          child: Image.asset('assets/images/Google.png')),
                    ),
                    Container(
                      height: 55,
                      width: 135.5,
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              // lightSource: LightSource.topLeft,
                              color: const Color(0xffE5E5E5),
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(27.5)),
                              intensity: 0.94,
                              depth: NeumorphicTheme.depth(context)),
                          child: Image.asset('assets/images/instra.png')),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

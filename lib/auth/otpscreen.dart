import 'package:car_rental/auth/resetpassword.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/bottomimg.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
                        height: 209,
                      ),
                      verificationcodeWidget(width)
                      // otheRecoveryWidget(width)
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

  Widget verificationcodeWidget(double width) {
    return Container(
      child: Neumorphic(
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
              Align(
                alignment: Alignment.center,
                child: getTtile('Verification Code', 16),
              ),
              const SizedBox(
                height: 31,
              ),
              getTtile('Enter OTP', 14),
              const SizedBox(
                height: 11,
              ),
              PinCodeTextField(
                // controller: otpController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  // borderRadius: BorderRadius.circular(25),
                  activeColor: Colors.black,
                  disabledColor: Colors.black,
                  selectedColor: Colors.black,
                  inactiveColor: Colors.black,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),

                length: 4,
                appContext: context,
                keyboardType: TextInputType.number,
                pastedTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                onChanged: (val) {},
                onCompleted: (result) {
                  if (result != null) {
                    // _callAccessPin(result);
                    // Verify(loginViewModal);
                  }

                  // Your logic with code
                  print(result);
                  //pin=result;

                  print(result);
                },
              ),
              const SizedBox(
                height: 38,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resetpassword()));
                },
                child: Container(
                  height: 55,
                  width: width,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        color: neumorphicColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(27.5)),
                        intensity: 12,
                        depth: NeumorphicTheme.depth(context)),
                    child: Align(
                        alignment: Alignment.center,
                        child: getTtile('Verify', 14)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

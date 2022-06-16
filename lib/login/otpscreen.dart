import 'package:car_rental/login/resetpassword.dart';
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
  final TextEditingController otpController = TextEditingController();
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
              padding: EdgeInsets.only(
                top: 120,
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
                        height: 209,
                      ),
                      verificationcodeWidget(width),
                      const SizedBox(
                        height: 23,
                      )
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
            intensity: 1,
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
                child: getTtile(
                    'Verification Code', 16, FontWeight.w500, 'Lab Grotesque'),
              ),
              const SizedBox(
                height: 31,
              ),
              getTtile('Enter OTP', 14, FontWeight.w500, 'Lab Grotesque'),
              const SizedBox(
                height: 11,
              ),
              PinCodeTextField(
                animationType: AnimationType.fade,
                controller: otpController,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: black,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(15),
                  activeColor: neumorphicColor,
                  disabledColor: neumorphicColor,
                  selectedColor: neumorphicColor,
                  inactiveColor: neumorphicColor,
                  fieldHeight: 55,
                  fieldWidth: 61.49,
                  activeFillColor: black,
                ),

                length: 4,
                appContext: context,
                keyboardType: TextInputType.number,

                boxShadows: const [
                  BoxShadow(
                      // spreadRadius: 0.8,
                      color: Color(0xffFAF9F9),
                      offset: Offset(-23, -23),
                      blurRadius: 40),
                  BoxShadow(
                      spreadRadius: 0.8,
                      color: Color(0xffD9D5D5),
                      offset: Offset(23, 23),
                      blurRadius: 30)
                ],
                // pastedTextStyle: const TextStyle(
                //   color: Colors.black,
                //   fontWeight: FontWeight.bold,
                // ),
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
                        child: getTtile(
                            'Verify', 14, FontWeight.w500, 'Lab Grotesque')),
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

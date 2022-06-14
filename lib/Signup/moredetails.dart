import 'package:car_rental/Signup/drivinglicence.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({Key? key}) : super(key: key);

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile('More Details', 16, FontWeight.w500),
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
        padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    lightSource: LightSource.topLeft,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                    intensity: 1,
                    // shadowLightColor: const Color(0xffFAF9F9),
                    color: neumorphicColor),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 25, top: 20, bottom: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getTtile('Date Of Birth', 14, FontWeight.w500),
                      const SizedBox(
                        height: 11,
                      ),
                      textfield(context, ''),
                      const SizedBox(
                        height: 23,
                      ),
                      getTtile('Country', 14, FontWeight.w500),
                      const SizedBox(
                        height: 11,
                      ),
                      countryField()
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrivingLicence()));
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
                        child: getTtile('Continue', 14, FontWeight.w500)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget countryField() {
    return Neumorphic(
      margin: const EdgeInsets.only(left: 3, right: 8, top: 2, bottom: 4),
      style: NeumorphicStyle(
          color: neumorphicColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
          intensity: 12,
          depth: NeumorphicTheme.embossDepth(context)),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
      child: Container(
        height: 55,
        alignment: Alignment.center,
        child: TextFormField(
          autofocus: false,
          cursorColor: Colors.black,
          style: const TextStyle(
              fontSize: 12, color: black, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Image.asset(
                  'assets/images/country.png',
                  width: 5.5,
                  height: 16.5,
                ),
              ),
              hintText: 'United Arab Emirates',
              border: InputBorder.none),
        ),
      ),
    );
  }
}

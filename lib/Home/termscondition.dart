import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile(
            'Terms & Conditions', 16, FontWeight.w500, 'Lab Grotesque'),
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
        padding: const EdgeInsets.only(top: 14, left: 19, right: 19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            createTermCond(),
            const SizedBox(
              height: 23,
            ),
            createButton()
          ],
        ),
      ),
    );
  }

  Widget createButton() {
    return Container(
        padding: const EdgeInsets.only(left: 27, right: 24),
        height: 55.58,
        child: neurphicmcontainer(
            27.5,
            Align(
              alignment: Alignment.center,
              child: getTtile('I Agree', 14, FontWeight.w500, 'Lab Grotesque'),
            )));
  }

  // change with api data
  Widget createTermCond() {
    return neurphicmcontainer(
        15,
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 11, right: 13, bottom: 13),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            getTtile('Deposit', 14, FontWeight.w500, 'Poppins'),
            const SizedBox(
              height: 10,
            ),
            getTtile('How It Work', 14, FontWeight.w500, 'Poppins'),
            const SizedBox(
              height: 3,
            ),
            getTtile(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                12,
                FontWeight.w400,
                'Poppins'),
            const SizedBox(
              height: 13,
            ),
            getTtile('Return Policy', 12, FontWeight.w500, 'Lab Grotesque'),
            const SizedBox(
              height: 3,
            ),
            getTtile(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                12,
                FontWeight.w400,
                'Lab Grotesque')
          ]),
        ));
  }

  Neumorphic neurphicmcontainer(double radius, Widget child) {
    return Neumorphic(
      style: NeumorphicStyle(
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(radius)),
          intensity: 1,
          // shadowLightColor: const Color(0xffFAF9F9),
          color: neumorphicColor),
      child: child,
    );
  }
}

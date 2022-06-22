import 'package:car_rental/Dashboard/dashboard.dart';
import 'package:car_rental/Home/bookingdetails.dart';
import 'package:car_rental/Signup/passportdocuments.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../widget/textfield.dart';

class Passport extends StatefulWidget {
  final String routesString1;
  Passport(this.routesString1);

  @override
  State<Passport> createState() => _PassportState();
}

class _PassportState extends State<Passport> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile('Passport', 16, FontWeight.w500, 'Lab Grotesque'),
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
        padding: const EdgeInsets.only(left: 16, right: 20, top: 18),
        child: ListView(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  lightSource: LightSource.topLeft,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  intensity: 1,
                  color: neumorphicColor),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 6.66, left: 15, right: 12, bottom: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getTtile('Passport details', 14, FontWeight.w500,
                        'Lab Grotesque'),
                    const SizedBox(
                      height: 49.34,
                    ),
                    Container(
                      width: width,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getTtile(
                                  'Name', 12, FontWeight.w500, 'Lab Grotesque'),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                  width: width / 2.5,
                                  child: textfield(
                                      context, 'Aliexis enache', false)),
                            ],
                          ),
                          const SizedBox(
                            width: 16.65,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getTtile('Surname', 12, FontWeight.w500,
                                    'Lab Grotesque'),
                                const SizedBox(
                                  height: 13,
                                ),
                                Container(
                                    width: width / 2,
                                    child: textfield(
                                        context, 'Aliexis enache', false)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    getTtile('Country', 12, FontWeight.w500, 'Lab Grotesque'),
                    const SizedBox(
                      height: 3,
                    ),
                    textfield(context, 'Country', false),
                    const SizedBox(
                      height: 9,
                    ),
                    getTtile('Passport Number', 12, FontWeight.w500,
                        'Lab Grotesque'),
                    const SizedBox(
                      height: 3,
                    ),
                    textfield(context, 'Passport Number', false),
                    const SizedBox(
                      height: 9,
                    ),
                    getTtile(
                        'Expiry Date', 12, FontWeight.w500, 'Lab Grotesque'),
                    const SizedBox(
                      height: 9,
                    ),
                    textfield(context, 'Expiry Date', false),
                    const SizedBox(
                      height: 19,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            getTtile(
                'Upload your Passport', 14, FontWeight.w500, 'Lab Grotesque'),
            const SizedBox(
              height: 4,
            ),
            uploadDrivingLicense(),
            const SizedBox(
              height: 18,
            ),
            uploadinglicence(),
            const SizedBox(
              height: 26,
            ),
            Submit(),
            const SizedBox(
              height: 25,
            ),
            widget.routesString1 == 'selectdatetime' ? Container() : Skip(),
            const SizedBox(
              height: 46,
            )
          ],
        ),
      ),
    );
  }

  Widget Skip() {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
          child: getTtile('Skip', 14, FontWeight.w500, 'Lab Grotesque')),
    );
  }

  Widget Submit() {
    return InkWell(
      onTap: () {
        widget.routesString1 == 'selectdatetime'
            ? Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BookindDetails()))
            : Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PassPortDocument()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 27, right: 24),
        child: Container(
          height: 55,
          width: double.infinity,
          child: Neumorphic(
            style: NeumorphicStyle(
                color: neumorphicColor,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(27.5)),
                intensity: 12,
                depth: NeumorphicTheme.depth(context)),
            child: Align(
                alignment: Alignment.center,
                child:
                    getTtile('Submit', 14, FontWeight.w500, 'Lab Grotesque')),
          ),
        ),
      ),
    );
  }

  Widget uploadinglicence() {
    return Container(
      width: double.infinity,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            intensity: 1,
            depth: NeumorphicTheme.depth(context)),
        child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 14, left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTtile('Uploading', 12, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            getTtile(
                                '62%', 12, FontWeight.w400, 'Lab Grotesque'),
                            const SizedBox(
                              width: 8,
                            ),
                            getTtile('12 Second Remaining', 12, FontWeight.w400,
                                'Lab Grotesque'),
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/close.png',
                          width: 15,
                          height: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const LinearProgressIndicator(
                    value: 1,
                    backgroundColor: Color(0xffD9D5D5),
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget uploadDrivingLicense() {
    return Container(
      height: 200,
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
            intensity: 1,
            depth: NeumorphicTheme.embossDepth(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 78,
              width: 78,
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(50),
                  padding: const EdgeInsets.all(6),
                  color: Color(0xff9C9B9B),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/addicon.png',
                          width: 29.9,
                          height: 29.9,
                        )),
                  )),
            ),
            const SizedBox(
              height: 14,
            ),
            getTtile('Click a Photo / Upload From Gallery', 12, FontWeight.w500,
                'Lab Grotesque'),
          ],
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
          intensity: 1,
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
              prefixIcon: Container(
                width: 5.5,
                height: 16.5,
                alignment: Alignment.center,
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

import 'package:car_rental/Signup/drivinglicence.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PassPortDocument extends StatefulWidget {
  const PassPortDocument({Key? key}) : super(key: key);

  @override
  State<PassPortDocument> createState() => _PassPortDocumentState();
}

class _PassPortDocumentState extends State<PassPortDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile('Documents', 16, FontWeight.w500, 'Lab Grotesque'),
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
        padding: const EdgeInsets.only(top: 14, left: 18, right: 19),
        child: Column(
          children: [
            drivingLicenseWidget(),
            const SizedBox(
              height: 18,
            ),
            passportDocuments()
          ],
        ),
      ),
    );
  }

  Widget drivingLicenseWidget() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DrivingLicence('passportdoc', 'passportdoc')));
      },
      child: Container(
        height: 51.14,
        width: double.infinity,
        child: Neumorphic(
          style: NeumorphicStyle(
              color: neumorphicColor,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              intensity: 1,
              depth: NeumorphicTheme.depth(context)),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getTtile(
                    'Driving License', 14, FontWeight.w500, 'Lab Grotesque'),
                Container(
                  child: Image.asset(
                    'assets/images/backfill.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget passportDocuments() {
    return Container(
      child: Neumorphic(
        style: NeumorphicStyle(
            color: neumorphicColor,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
            intensity: 1,
            depth: NeumorphicTheme.depth(context)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 17, left: 13, right: 10, bottom: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  getTtile('Passport', 14, FontWeight.w500, 'Lab Grotesque'),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/arrow_down.png',
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              documentField('Name', 'Alexis'),
              const SizedBox(
                height: 23,
              ),
              documentField('Surname', "Enache"),
              const SizedBox(
                height: 23,
              ),
              documentField('Country', 'United Arab Emirates'),
              const SizedBox(
                height: 23,
              ),
              documentField('Passport Number', 'DL02154879327'),
              const SizedBox(
                height: 23,
              ),
              documentField('Expiry Date', '12-1-2025'),
              const SizedBox(
                height: 28,
              ),
              Container(
                height: 176,
                width: 312,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      color: neumorphicColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(15)),
                      intensity: 1,
                      depth: NeumorphicTheme.depth(context)),
                  child: Image.asset('assets/images/passportimg.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget documentField(String title, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getTtile(title, 12, FontWeight.w500, 'Lab Grotesque'),
        getTtile(text, 12, FontWeight.w500, 'Lab Grotesque')
      ],
    );
  }
}

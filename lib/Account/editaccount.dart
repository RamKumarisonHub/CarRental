import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:car_rental/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        centerTitle: true,
        title: getTtile('Edit Account', 16, FontWeight.w500, 'Lab Grotesque'),
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
      body: ListView(
        children: [
          profileWidget(width),
          const SizedBox(
            height: 23,
          ),
          Save(),
          const SizedBox(
            height: 31.86,
          ),
        ],
      ),
    );
  }

  Widget profileWidget(double width) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 14),
      child: Container(
        width: width,
        child: Neumorphic(
          style: NeumorphicStyle(
              color: neumorphicColor,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
              intensity: 1,
              depth: NeumorphicTheme.depth(context)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 22, left: 24, right: 23, bottom: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    selectphotoDialogbox();
                  },
                  child: Align(
                    child: Container(
                      width: 110,
                      height: 110,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            color: neumorphicColor,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(15)),
                            intensity: 1,
                            depth: NeumorphicTheme.depth(context)),
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/camera.png',
                            width: 35,
                            height: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                    child: getTtile(
                        'Alexis enache', 16, FontWeight.w500, 'Lab Grotesque')),
                const SizedBox(
                  height: 9,
                ),
                Align(
                    child: getTtile('Alexisenache02@gmail.com', 12,
                        FontWeight.w500, 'Lab Grotesque')),
                const SizedBox(
                  height: 38,
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
                            height: 11,
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
                            getTtile('Surname', 12, FontWeight.w500,
                                'Lab Grotesque'),
                            const SizedBox(
                              height: 11,
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
                  height: 11,
                ),
                textfield(context, 'aliexisenache02@gmail.com'),
                const SizedBox(
                  height: 23,
                ),
                getTtile('Phone Number', 14, FontWeight.w500, 'Lab Grotesque'),
                const SizedBox(
                  height: 11,
                ),
                textfield(context, '0123456789'),
                const SizedBox(
                  height: 23,
                ),
                getTtile('Age', 14, FontWeight.w500, 'Lab Grotesque'),
                const SizedBox(
                  height: 11,
                ),
                textfield(context, ''),
                const SizedBox(
                  height: 23,
                ),
                getTtile('Country', 14, FontWeight.w500, 'Lab Grotesque'),
                const SizedBox(
                  height: 11,
                ),
                countryField(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Save() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Dashboard()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 43, right: 42),
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
              child: getTtile('Save', 14, FontWeight.w500, 'Lab Grotesque')),
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
        alignment: Alignment.center,
        height: 55,
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

  selectphotoDialogbox() {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            // <-- SEE HERE
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(35.0),
        )),
        context: context,
        builder: (context) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 18, bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTtile('Select', 14, FontWeight.w500, 'Lab Grotesque'),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 51.4,
                            width: 51.4,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  color: neumorphicColor,
                                  boxShape: NeumorphicBoxShape.circle(),
                                  intensity: 1,
                                  depth: NeumorphicTheme.depth(context)),
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/camera.png',
                                  width: 20,
                                  height: 18.4,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          getTtile('Take a Picture', 12, FontWeight.w500,
                              'Lab Grotesque'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 51.4,
                            width: 51.4,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  color: neumorphicColor,
                                  boxShape: NeumorphicBoxShape.circle(),
                                  intensity: 1,
                                  depth: NeumorphicTheme.depth(context)),
                              child: Container(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/gallery.png',
                                  width: 20,
                                  height: 18.4,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          getTtile('Take a Picture', 12, FontWeight.w500,
                              'Lab Grotesque'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

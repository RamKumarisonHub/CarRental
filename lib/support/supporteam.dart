import 'package:car_rental/modal/chatmodal.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportTeam extends StatefulWidget {
  const SupportTeam({Key? key}) : super(key: key);

  @override
  State<SupportTeam> createState() => _SupportTeamState();
}

class _SupportTeamState extends State<SupportTeam> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: neumorphicColor,
        title: getTtile('Support Team', 18, FontWeight.w500, 'Lab Grotesque'),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: black,
            )),
      ),
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: chatMessage.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      neurphicmcontainer(
                          50,
                          Image.asset(
                            chatMessage[index]['img'],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              // BoxShadow(
                              //   color: Colors.white70,
                              //   blurRadius: 90.0,
                              //   offset: Offset(-18, 8),
                              // ),
                            ]),
                        child: ClipPath(
                          clipper: UpperNipMessageClipper(MessageType.RECEIVE),
                          child: Container(
                            width: 230,
                            height: 48,
                            child: neurphicmcontainer(
                              10,
                              const Align(
                                  alignment: Alignment.center,
                                  child: Text("data")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            typemsgField(),
          ],
        ),
      ),
    );
  }

  Widget typemsgField() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 18, right: 18),
        child: Container(
          height: 50,
          child: Neumorphic(
            margin: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
            style: NeumorphicStyle(
                color: neumorphicColor,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                intensity: 11,
                depth: NeumorphicTheme.depth(context)),
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 18),
            child: TextFormField(
              cursorColor: Colors.black,
              style: GoogleFonts.roboto(
                  color: black, fontWeight: FontWeight.w400, fontSize: 14),
              decoration: InputDecoration(
                  hintText: "Type a message...",
                  helperStyle: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 14),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: InkWell(
                        child: Image.asset(
                      'assets/images/send.png',
                    )),
                  )),
            ),
          ),
        ),
      ),
    );
  }

  Neumorphic neurphicmcontainer(double radius, Widget child) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          lightSource: LightSource.topLeft,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(radius)),
          intensity: 1,
          depth: NeumorphicTheme.depth(context),
          color: neumorphicColor),
      child: child,
    );
  }
}

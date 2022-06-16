import 'package:car_rental/utils/constants.dart';
import 'package:car_rental/widget/gettitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chatdata.dart';

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
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)),
                            depth: 8,
                            lightSource: LightSource.topLeft,
                            color: Colors.grey),
                        child: Icon(Icons.account_balance),
                      )
                    ],
                  ),
                );
                //   Container(
                //   padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                //   child: Neumorphic(
                //     child: Align(
                //       alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                //       child: Container(
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                //         ),
                //         padding: EdgeInsets.all(16),
                //         child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                //       ),
                //     ),
                //   ),
                // );
              },
            ),
            typemsgField(),
            // Container(
            //   height: height,
            //   width: width,
            //   color: Colors.red,
            // )
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
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                intensity: 12,
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
}

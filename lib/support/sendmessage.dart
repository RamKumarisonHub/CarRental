import 'package:car_rental/modal/chatmodal.dart';
import 'package:car_rental/utils/constants.dart';
import 'package:custom_clippers/MessageClippers/upper_nip_message_clipper.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatMessage.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                neurphicmcontainer(
                    context,
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
                        BoxShadow(
                          color: Colors.white54,
                          blurRadius: 19.0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                  child: ClipPath(
                    clipper: UpperNipMessageClipper(MessageType.RECEIVE),
                    child: Container(
                      width: 230,
                      height: 48,
                      child: neurphicmcontainer(
                        context,
                        10,
                        const Align(
                            alignment: Alignment.center, child: Text("data")),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Neumorphic neurphicmcontainer(
      BuildContext context, double radius, Widget child) {
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

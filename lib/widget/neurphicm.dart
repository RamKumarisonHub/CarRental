import 'package:car_rental/utils/constants.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Neumorphic neumorphicContainer(BuildContext context, Widget child) {
  return Neumorphic(
    style: NeumorphicStyle(
        color: neumorphicColor,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        intensity: 1,
        depth: NeumorphicTheme.embossDepth(context)),
    child: child,
  );
}

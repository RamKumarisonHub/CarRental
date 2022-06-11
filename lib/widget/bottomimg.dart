import 'package:car_rental/utils/constants.dart';
import 'package:flutter/material.dart';

Widget bottamImg() {
  return Positioned(
      bottom: 0,
      left: 0,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  taier1color.withOpacity(0.31),
                  taier2color.withOpacity(1.0)
                ],
              ).createShader(bounds);
            },
            child: Image.asset(
              'assets/images/taier.png',
              width: 154,
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  taier1color.withOpacity(0.31),
                  taier2color.withOpacity(1.0)
                ],
              ).createShader(bounds);
            },
            child: Image.asset(
              'assets/images/taier.png',
              width: 154,
            ),
          ),
        ],
      ));
}

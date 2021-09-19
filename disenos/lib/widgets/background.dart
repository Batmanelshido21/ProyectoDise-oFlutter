import 'dart:math';

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff2E305F), Color(0xff202333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //Purple gradient
          decoration: boxDecoration,
          //Pink box
        ),
        Positioned(top: -110, left: -70, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])),
      ),
    );
  }
}

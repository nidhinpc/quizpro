import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:quizpro/utils/color_constants.dart';

class CustomBox extends StatelessWidget {
  String section;
  void Function()? onCardTaped;
  dynamic Coverimage;
  CustomBox({
    required this.section,
    required this.Coverimage,
    this.onCardTaped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(Coverimage)),
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.BoxColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  section,
                  style: TextStyle(
                    backgroundColor: Color.fromARGB(179, 0, 0, 0),
                    color: ColorConstants.TextColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

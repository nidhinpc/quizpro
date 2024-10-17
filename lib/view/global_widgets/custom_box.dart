import 'package:flutter/material.dart';
import 'package:quizpro/utils/color_constants.dart';

class CustomBox extends StatelessWidget {
  String section;
  void Function()? onCardTaped;
  CustomBox({
    required this.section,
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
                    color: ColorConstants.StarColor,
                    fontSize: 24,
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

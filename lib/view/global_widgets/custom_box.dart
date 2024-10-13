import 'package:flutter/material.dart';
import 'package:quizpro/utils/color_constants.dart';
import 'package:quizpro/view/sportsQuiz/sports_quiz.dart';

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
          color: ColorConstants.TextColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(section),
              )
            ],
          ),
        ),
      ),
    );
  }
}

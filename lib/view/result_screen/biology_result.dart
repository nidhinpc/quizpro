import 'package:flutter/material.dart';
import 'package:quizpro/utils/color_constants.dart';
import 'package:quizpro/view/biologyQuiz/biology_quiz.dart';
import 'package:quizpro/view/dummydb.dart';
import 'package:quizpro/view/home_screen/home_screen.dart';

class BiologyScreen extends StatefulWidget {
  const BiologyScreen({required this.rightAnswerCount, super.key});
  final int rightAnswerCount;

  @override
  State<BiologyScreen> createState() => _BiologyScreenState();
}

class _BiologyScreenState extends State<BiologyScreen> {
  int starCount = 0;
  late int yourScore;

  calculateStarccount() {
    var percentage =
        widget.rightAnswerCount / Dummydb.biologyQuestionList.length * 100;
    if (percentage >= 80) {
      starCount = 3;
    } else if (percentage >= 50) {
      starCount = 2;
    } else if (percentage >= 30) {
      starCount = 1;
    } else {
      starCount = 0;
    }
    print(percentage);
    yourScore = widget.rightAnswerCount;
  }

  @override
  void initState() {
    calculateStarccount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, bottom: index == 1 ? 30 : 0),
                      child: Icon(
                        Icons.star,
                        color: index < starCount
                            ? ColorConstants.StarColor
                            : Colors.grey,
                        size: index == 1 ? 80 : 45,
                      ),
                    ),
                  )),
              Text(
                "Congratulations",
                style: TextStyle(
                    color: ColorConstants.StarColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your score",
                style: TextStyle(color: ColorConstants.TextColor, fontSize: 24),
              ),
              Text(
                "$yourScore/${Dummydb.sportsQuestionList.length - 1}",
                style: TextStyle(color: ColorConstants.StarColor, fontSize: 22),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BiologyQuiz(),
                    ),
                    (route) => false,
                  );
                  calculateStarccount();
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: ColorConstants.TextColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      "Restart",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: ColorConstants.TextColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      "Return to Home",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

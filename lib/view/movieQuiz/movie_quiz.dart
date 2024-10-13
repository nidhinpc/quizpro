import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:circular_countdown_timer/countdown_text_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:lottie/lottie.dart';
import 'package:quizpro/utils/animation_constants.dart';
import 'package:quizpro/utils/color_constants.dart';
import 'package:quizpro/view/dummydb.dart';
import 'package:quizpro/view/result_screen/movie_result.dart';
import 'package:quizpro/view/result_screen/result_screen.dart';

class MovieQuiz extends StatefulWidget {
  const MovieQuiz({super.key});

  @override
  State<MovieQuiz> createState() => _MovieQuizState();
}

class _MovieQuizState extends State<MovieQuiz> {
  double percentage = 0.0;
  bool _isAnswered = false;
  int currentIndex = 0;
  int questIndex = 0;
  int currentQuest = 1;
  int lastQuest = Dummydb.movieQuestionList.length;
  int? selectedOption;
  int rightAnswerCount = 0;

  CountDownController _timecontroller = CountDownController();

  void _updatePercentage() {
    setState(() {
      percentage = (currentQuest / lastQuest) * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: RoundedProgressBar(
              childLeft: Text("${percentage.toStringAsFixed(1)}%",
                  style: TextStyle(color: Colors.white)),
              percent: percentage,
              theme: RoundedProgressBarTheme.green),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "$currentQuest/${lastQuest - 1}",
                style: TextStyle(color: ColorConstants.TextColor),
              ),
            )
          ],
          backgroundColor: ColorConstants.BackgroundColor,
        ),
        backgroundColor: ColorConstants.BackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    SizedBox(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstants.TextColor, width: 1),
                            borderRadius: BorderRadius.circular(20),
                            color: ColorConstants.BoxColor),
                        child: Center(
                          child: Text(
                            Dummydb.movieQuestionList[questIndex]["question"],
                            style: TextStyle(color: ColorConstants.TextColor),
                          ),
                        ),
                      ),
                    ),
                    if (selectedOption ==
                        Dummydb.movieQuestionList[currentIndex]["answerIndex"])
                      Lottie.asset(
                        AnimationConstants.rightAnswerAnimation,
                      ),
                    Positioned(
                      top: 1,
                      right: 170,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.SubTextColor,
                          child: CircularCountDownTimer(
                            duration: 30,
                            initialDuration: 0,
                            controller: _timecontroller,
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 2,
                            ringColor: Colors.grey[300]!,
                            ringGradient: null,
                            fillColor: Colors.purpleAccent[100]!,
                            fillGradient: null,
                            backgroundColor: Colors.purple[500],
                            backgroundGradient: null,
                            strokeWidth: 8.0,
                            strokeCap: StrokeCap.round,
                            textStyle: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textFormat: CountdownTextFormat.S,
                            isReverse: false,
                            isReverseAnimation: false,
                            isTimerTextShown: true,
                            autoStart: true,
                            onComplete: () {
                              selectedOption = null;
                              if (currentQuest < lastQuest - 1) {
                                currentQuest++;
                                questIndex++;
                                currentIndex++;
                                _isAnswered = true;

                                setState(() {});
                                _timecontroller.restart(duration: 30);
                              } else {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ResultScreen(
                                        rightAnswerCount: rightAnswerCount,
                                      ),
                                    ));
                              }
                            },
                            timeFormatterFunction:
                                (defaultFormatterFunction, duration) {
                              if (duration.inSeconds == 0) {
                                return "0";
                              } else {
                                return Function.apply(
                                    defaultFormatterFunction, [duration]);
                              }
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  Dummydb.movieQuestionList[currentIndex]["options"].length,
                  (optionIndex) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {
                          if (!_isAnswered) {
                            selectedOption = optionIndex;
                            if (selectedOption ==
                                Dummydb.movieQuestionList[currentIndex]
                                    ["answerIndex"]) {
                              rightAnswerCount = rightAnswerCount + 1;
                            }
                            setState(() {});
                            print(selectedOption);
                            _isAnswered = true;
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: getColor(optionIndex), width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Dummydb.movieQuestionList[currentIndex]
                                    ["options"][optionIndex],
                                style: TextStyle(
                                    color: ColorConstants.TextColor,
                                    fontSize: 16),
                              ),
                              Icon(
                                Icons.circle_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              if (selectedOption != null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: () {
                      selectedOption = null;
                      if (currentQuest < lastQuest - 1) {
                        currentQuest++;
                        questIndex++;
                        currentIndex++;
                        _isAnswered = false;
                        _updatePercentage();
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieResult(
                                rightAnswerCount: rightAnswerCount,
                              ),
                            ));
                      }
                      setState(() {});
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 5, 131, 234),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: ColorConstants.TextColor, fontSize: 16),
                        ),
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

  Color getColor(int currentOptionIndex) {
    if (selectedOption != null &&
        currentOptionIndex ==
            Dummydb.movieQuestionList[currentIndex]["answerIndex"]) {
      return ColorConstants.RightAnswerIndex;
    } else if (selectedOption == currentOptionIndex) {
      if (selectedOption ==
          Dummydb.movieQuestionList[currentIndex]["answerIndex"]) {
        return ColorConstants.RightAnswerIndex;
      } else {
        return ColorConstants.WrongAnswerIndex;
      }
    } else {
      return ColorConstants.TextColor;
    }
  }
}

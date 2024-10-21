import 'package:flutter/material.dart';
import 'package:quizpro/utils/color_constants.dart';
import 'package:quizpro/view/dummydb.dart';
import 'package:quizpro/view/global_widgets/custom_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.BackgroundColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,Nidhin",
              style: TextStyle(color: ColorConstants.TextColor, fontSize: 24),
            ),
            Text(
              "Do you wanna play ? Let's play this...",
              style:
                  TextStyle(color: ColorConstants.SubTextColor, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: ColorConstants.StarColor,
              radius: 20,
            ),
          )
        ],
      ),
      backgroundColor: ColorConstants.BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                  color: ColorConstants.BoxColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ranking",
                      style: TextStyle(
                          color: ColorConstants.SubTextColor, fontSize: 18),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Points",
                      style: TextStyle(
                          color: ColorConstants.SubTextColor, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Let's Play",
              style: TextStyle(color: ColorConstants.TextColor, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1 / 1.15),
                itemBuilder: (context, index) {
                  return CustomBox(
                    section: Dummydb.sectionList[index]["SectionName"],
                    Coverimage: Dummydb.sectionList[index]["Cover"],
                    onCardTaped: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Dummydb.sectionList[index]["Navigation"],
                        ),
                      );
                    },
                  );
                },
                itemCount: Dummydb.sectionList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

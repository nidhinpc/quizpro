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
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1647613049527-851295e24918?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
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
                    color: Color.fromARGB(255, 47, 2, 252),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
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

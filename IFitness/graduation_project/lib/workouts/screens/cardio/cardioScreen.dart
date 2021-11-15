import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/components/bottomButton.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/videoPlayer.dart';
import 'package:graduation_project/workouts/components/workoutContent.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class CardioScreen1 extends StatefulWidget {
  @override
  _CardioScreen1State createState() => _CardioScreen1State();
}

class _CardioScreen1State extends State<CardioScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: cardioContent[0].level,
        title: cardioContent[0].title,
        description: cardioContent[0].description,
        minutes: cardioContent[0].minutes,
        exercises: cardioContent[0].exercisesQuantity,
        calorie: cardioContent[0].calorie,
        image: cardioContent[0].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: cardioContent[0].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}


class CardioScreen2 extends StatefulWidget {
  @override
  _CardioScreen2State createState() => _CardioScreen2State();
}

class _CardioScreen2State extends State<CardioScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        image: cardioContent[1].image,
        level: cardioContent[1].level,
        title: cardioContent[1].title,
        calorie: cardioContent[1].calorie,
        description: cardioContent[1].description,
        minutes: cardioContent[1].minutes,
        exercises: cardioContent[1].exercisesQuantity,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: cardioContent[1].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

class CardioScreen3 extends StatefulWidget {
  @override
  _CardioScreen3State createState() => _CardioScreen3State();
}

class _CardioScreen3State extends State<CardioScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        image: cardioContent[2].image,
        level: cardioContent[2].level,
        title: cardioContent[2].title,
        calorie: cardioContent[2].calorie,
        description: cardioContent[2].description,
        minutes: cardioContent[2].minutes,
        exercises: cardioContent[2].exercisesQuantity,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: cardioContent[2].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

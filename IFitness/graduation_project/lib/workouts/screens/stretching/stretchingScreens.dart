import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/workoutContent.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'package:graduation_project/components/bottomButton.dart';
import 'package:graduation_project/workouts/components/videoPlayer.dart';

class StretchingScreen1 extends StatefulWidget {
  @override
  _StretchingScreen1State createState() => _StretchingScreen1State();
}

class _StretchingScreen1State extends State<StretchingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: stretchingContent[0].level,
        title: stretchingContent[0].title,
        description: stretchingContent[0].description,
        minutes: stretchingContent[0].minutes,
        calorie: stretchingContent[0].calorie,
        exercises: stretchingContent[0].exercisesQuantity,
        image: stretchingContent[0].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: stretchingContent[0].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

class StretchingScreen2 extends StatefulWidget {
  @override
  _StretchingScreen2State createState() => _StretchingScreen2State();
}

class _StretchingScreen2State extends State<StretchingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: stretchingContent[1].level,
        title: stretchingContent[1].title,
        description: stretchingContent[1].description,
        minutes: stretchingContent[1].minutes,
        calorie: stretchingContent[1].calorie,
        exercises: stretchingContent[1].exercisesQuantity,
        image: stretchingContent[1].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: stretchingContent[1].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

class StretchingScreen3 extends StatefulWidget {
  @override
  _StretchingScreen3State createState() => _StretchingScreen3State();
}

class _StretchingScreen3State extends State<StretchingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: stretchingContent[2].level,
        title: stretchingContent[2].title,
        description: stretchingContent[2].description,
        minutes: stretchingContent[2].minutes,
        calorie: stretchingContent[2].calorie,
        exercises: stretchingContent[2].exercisesQuantity,
        image: stretchingContent[2].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: stretchingContent[2].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}


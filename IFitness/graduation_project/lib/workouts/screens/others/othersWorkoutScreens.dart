import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/workoutContent.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'package:graduation_project/components/bottomButton.dart';
import 'package:graduation_project/workouts/components/videoPlayer.dart';

class OthersWorkoutScreen1 extends StatefulWidget {
  @override
  _OthersWorkoutScreen1State createState() => _OthersWorkoutScreen1State();
}

class _OthersWorkoutScreen1State extends State<OthersWorkoutScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: othersWorkoutContent[0].level,
        title: othersWorkoutContent[0].title,
        description: othersWorkoutContent[0].description,
        minutes: othersWorkoutContent[0].minutes,
        calorie: othersWorkoutContent[0].calorie,
        exercises: othersWorkoutContent[0].exercisesQuantity,
        image: othersWorkoutContent[0].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: othersWorkoutContent[0].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

class OthersWorkoutScreen2 extends StatefulWidget {
  @override
  _OthersWorkoutScreen2State createState() => _OthersWorkoutScreen2State();
}

class _OthersWorkoutScreen2State extends State<OthersWorkoutScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: othersWorkoutContent[1].level,
        title: othersWorkoutContent[1].title,
        description: othersWorkoutContent[1].description,
        minutes: othersWorkoutContent[1].minutes,
        calorie: othersWorkoutContent[1].calorie,
        exercises: othersWorkoutContent[1].exercisesQuantity,
        image: othersWorkoutContent[1].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: othersWorkoutContent[1].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}


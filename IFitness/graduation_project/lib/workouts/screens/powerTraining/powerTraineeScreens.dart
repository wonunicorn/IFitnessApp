import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/workoutContent.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'package:graduation_project/components/bottomButton.dart';
import 'package:graduation_project/workouts/components/videoPlayer.dart';

class PowerTraineeScreen1 extends StatefulWidget {
  @override
  _PowerTraineeScreen1State createState() => _PowerTraineeScreen1State();
}

class _PowerTraineeScreen1State extends State<PowerTraineeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: powerTrainingContent[0].level,
        title: powerTrainingContent[0].title,
        description: powerTrainingContent[0].description,
        minutes: powerTrainingContent[0].minutes,
        calorie: powerTrainingContent[0].calorie,
        exercises: powerTrainingContent[0].exercisesQuantity,
        image: powerTrainingContent[0].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: powerTrainingContent[0].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}

class PowerTraineeScreen2 extends StatefulWidget {
  @override
  _PowerTraineeScreen2State createState() => _PowerTraineeScreen2State();
}

class _PowerTraineeScreen2State extends State<PowerTraineeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: WorkoutContent(
        level: powerTrainingContent[1].level,
        title: powerTrainingContent[1].title,
        description: powerTrainingContent[1].description,
        minutes: powerTrainingContent[1].minutes,
        calorie: powerTrainingContent[1].calorie,
        exercises: powerTrainingContent[1].exercisesQuantity,
        image: powerTrainingContent[1].image,
      ),
      bottomSheet: Container(
        color: kdarkblue,
        child: BottomButton(
          text: 'Get Started',
          press: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => VideoDisplay(videoUrl: powerTrainingContent[1].video),
            ));
          },
          colour: kbluegreen,
        ),
      ),
    );
  }
}





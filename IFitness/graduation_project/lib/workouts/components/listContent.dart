import 'package:flutter/cupertino.dart';

class WorkoutContent{

  String image;
  int minutes;
  int exercisesQuantity;
  String level;
  String workoutType;
  String title;
  String description;
  int calorie;
  int number;
  Widget nextWay;
  String video;

  WorkoutContent({
    this.minutes,
    this.description,
    this.image,
    this.title,
    this.level,
    this.exercisesQuantity,
    this.workoutType,
    this.calorie,
    this.number,
    this.nextWay,
    this.video
});

}

enum level {beginner, intermediate, advance}
enum workoutType{cardio, powerTraining, stretching, sevenMinutes, others}


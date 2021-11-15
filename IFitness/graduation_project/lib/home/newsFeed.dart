import 'package:flutter/material.dart';
import 'package:graduation_project/home/parts/burnCalories.dart';
import 'package:graduation_project/home/parts/fullBodyTraining.dart';
import 'package:graduation_project/home/parts/longWorkouts.dart';
import 'package:graduation_project/home/parts/quickWorkouts.dart';
import 'package:graduation_project/home/components/titleStyle.dart';
import 'package:graduation_project/home/parts/topRecommendation.dart';
import 'package:graduation_project/home/screens/burnCaloriesScreen.dart';
import 'package:graduation_project/home/screens/fullBodyScreen.dart';
import 'package:graduation_project/home/screens/longWorkoutScreen.dart';
import 'package:graduation_project/home/screens/quickWorkoutScreen.dart';


class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          TopWorkout(),
          TitleStyle(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return QuickWorkoutScreen();
              }));
            },
            title: 'Quick Workouts',
          ),
          QuickWorkout(),
          TitleStyle(
            title: 'Long Workouts',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LongWorkoutScreen();
              }));
            },
          ),
          LongWorkouts(),
          TitleStyle(
            title: 'Full Body',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FullBodyScreen();
              }));
            },
          ),
          FullBodyTraining(),
          TitleStyle(
            title: 'Burn calories',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BurnCaloriesScreen();
              }));
            },
          ),
          BurnCaloriesTraining(),
        ],
      ),
    );
  }
}

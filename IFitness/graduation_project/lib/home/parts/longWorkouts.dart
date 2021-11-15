import 'package:flutter/material.dart';
import '../components/card.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class LongWorkouts extends StatefulWidget {
  @override
  _LongWorkoutsState createState() => _LongWorkoutsState();
}

class _LongWorkoutsState extends State<LongWorkouts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PrimaryCard(
            image: cardioContent[2].image,
            time: cardioContent[2].minutes,
            title: cardioContent[2].title,
            level: cardioContent[2].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return cardioContent[2].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: powerTrainingContent[1].image,
            time: powerTrainingContent[1].minutes,
            title: powerTrainingContent[1].title,
            level: powerTrainingContent[1].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return powerTrainingContent[1].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: othersWorkoutContent[0].image,
            time: othersWorkoutContent[0].minutes,
            title: othersWorkoutContent[0].title,
            level: othersWorkoutContent[0].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return othersWorkoutContent[0].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: othersWorkoutContent[1].image,
            time: othersWorkoutContent[1].minutes,
            title: othersWorkoutContent[1].title,
            level: othersWorkoutContent[1].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return othersWorkoutContent[1].nextWay;
              }));
            },
          ),

        ],
      ),
    );
  }
}

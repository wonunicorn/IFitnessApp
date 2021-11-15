import 'package:flutter/material.dart';
import '../components/card.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class QuickWorkout extends StatefulWidget {
  @override
  _QuickWorkoutState createState() => _QuickWorkoutState();
}

class _QuickWorkoutState extends State<QuickWorkout> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PrimaryCard(
            image: cardioContent[0].image,
            time: cardioContent[0].minutes,
            title: cardioContent[0].title,
            level: cardioContent[0].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return cardioContent[0].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: cardioContent[1].image,
            time: cardioContent[1].minutes,
            title: cardioContent[1].title,
            level: cardioContent[1].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return cardioContent[1].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: powerTrainingContent[0].image,
            time: powerTrainingContent[0].minutes,
            title: powerTrainingContent[0].title,
            level: powerTrainingContent[0].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return powerTrainingContent[0].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: stretchingContent[0].image,
            time: stretchingContent[0].minutes,
            title: stretchingContent[0].title,
            level: stretchingContent[0].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return stretchingContent[0].nextWay;
              }));
            },
          ),
          PrimaryCard(
            image: stretchingContent[1].image,
            time: stretchingContent[1].minutes,
            title: stretchingContent[1].title,
            level: stretchingContent[1].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return stretchingContent[1].nextWay;
              }));
            },
          ),
        ],
      ),
    );
  }
}

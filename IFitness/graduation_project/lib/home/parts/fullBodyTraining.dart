import 'package:flutter/material.dart';
import '../components/card.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class FullBodyTraining extends StatefulWidget {
  @override
  _FullBodyTrainingState createState() => _FullBodyTrainingState();
}

class _FullBodyTrainingState extends State<FullBodyTraining> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
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
            image: stretchingContent[2].image,
            time: stretchingContent[2].minutes,
            title: stretchingContent[2].title,
            level: stretchingContent[2].level,
            tap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return stretchingContent[2].nextWay;
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
        ],
      ),
    );
  }
}

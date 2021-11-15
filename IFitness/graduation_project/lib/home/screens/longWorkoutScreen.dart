import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class LongWorkoutScreen extends StatefulWidget {
  @override
  _LongWorkoutScreenState createState() => _LongWorkoutScreenState();
}

class _LongWorkoutScreenState extends State<LongWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        backgroundColor: kdarkblue,
      ),
      body: ListView(
        children: [
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return cardioContent[2].nextWay;
                }));
              },
              image: cardioContent[2].image,
              title: cardioContent[2].title,
              subtitle: cardioContent[2].minutes.toString() + ' min -- ' + cardioContent[2].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return othersWorkoutContent[1].nextWay;
                }));
              },
              image: othersWorkoutContent[1].image,
              title: othersWorkoutContent[1].title,
              subtitle: othersWorkoutContent[1].minutes.toString() + ' min -- ' + othersWorkoutContent[1].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return othersWorkoutContent[0].nextWay;
                }));
              },
              image: othersWorkoutContent[0].image,
              title: othersWorkoutContent[0].title,
              subtitle: othersWorkoutContent[0].minutes.toString() + ' min -- ' + othersWorkoutContent[0].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return powerTrainingContent[1].nextWay;
                }));
              },
              image: powerTrainingContent[1].image,
              title: powerTrainingContent[1].title,
              subtitle: powerTrainingContent[1].minutes.toString() + ' min -- ' + powerTrainingContent[1].level,

            ),
          ),
        ],
      ),
    );
  }
}

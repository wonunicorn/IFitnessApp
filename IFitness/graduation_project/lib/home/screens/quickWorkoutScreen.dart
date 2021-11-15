import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class QuickWorkoutScreen extends StatefulWidget {
  @override
  _QuickWorkoutScreenState createState() => _QuickWorkoutScreenState();
}

class _QuickWorkoutScreenState extends State<QuickWorkoutScreen> {
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
                  return powerTrainingContent[0].nextWay;
                }));
              },
              image: powerTrainingContent[0].image,
              title: powerTrainingContent[0].title,
              subtitle: powerTrainingContent[0].minutes.toString() + ' min -- ' + powerTrainingContent[0].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return stretchingContent[0].nextWay;
                }));
              },
              image: stretchingContent[0].image,
              title: stretchingContent[0].title,
              subtitle: stretchingContent[0].minutes.toString() + ' min -- ' + stretchingContent[0].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return cardioContent[0].nextWay;
                }));
              },
              image: cardioContent[0].image,
              title: cardioContent[0].title,
              subtitle: cardioContent[0].minutes.toString() + ' min -- ' + cardioContent[0].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return stretchingContent[1].nextWay;
                }));
              },
              image: stretchingContent[1].image,
              title: stretchingContent[1].title,
              subtitle: stretchingContent[1].minutes.toString() + ' min -- ' + stretchingContent[1].level,

            ),
          ),
          Card(
            color: kdarkblue,
            child: ListTileContent(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return cardioContent[1].nextWay;
                }));
              },
              image: cardioContent[1].image,
              title: cardioContent[1].title,
              subtitle: cardioContent[1].minutes.toString() + ' min -- ' + cardioContent[1].level,

            ),
          ),
        ],
      ),
    );
  }
}

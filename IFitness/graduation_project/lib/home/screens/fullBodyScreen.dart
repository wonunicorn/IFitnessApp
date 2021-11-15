import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class FullBodyScreen extends StatefulWidget {
  @override
  _FullBodyScreenState createState() => _FullBodyScreenState();
}

class _FullBodyScreenState extends State<FullBodyScreen> {
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
                  return stretchingContent[2].nextWay;
                }));
              },
              image: stretchingContent[2].image,
              title: stretchingContent[2].title,
              subtitle: stretchingContent[2].minutes.toString() + ' min -- ' + stretchingContent[2].level,

            ),
          ),
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
                  return cardioContent[1].nextWay;
                }));
              },
              image: cardioContent[1].image,
              title: cardioContent[1].title,
              subtitle: cardioContent[1].minutes.toString() + ' min -- ' + cardioContent[1].level,

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
        ],
      ),
    );
  }
}

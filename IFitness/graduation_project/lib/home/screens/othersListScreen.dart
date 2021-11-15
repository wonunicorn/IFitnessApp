import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class OthersListScreen extends StatefulWidget {
  @override
  _OthersListScreenState createState() => _OthersListScreenState();
}

class _OthersListScreenState extends State<OthersListScreen> {
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
        ],
      ),
    );
  }
}

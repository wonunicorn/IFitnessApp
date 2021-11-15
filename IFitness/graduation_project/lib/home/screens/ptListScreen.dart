import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class PtListScreen extends StatefulWidget {
  @override
  _PtListScreenState createState() => _PtListScreenState();
}

class _PtListScreenState extends State<PtListScreen> {
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
                  return powerTrainingContent[1].nextWay;
                }));
              },
              image: powerTrainingContent[1].image,
              title: powerTrainingContent[1].title,
              subtitle: powerTrainingContent[1].minutes.toString() + ' min -- ' + powerTrainingContent[1].level,

            ),
          ),
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
        ],
      ),
    );
  }
}

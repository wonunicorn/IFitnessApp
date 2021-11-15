import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class CardioListScreen extends StatefulWidget {
  @override
  _CardioListScreenState createState() => _CardioListScreenState();
}

class _CardioListScreenState extends State<CardioListScreen> {
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
                  return cardioContent[2].nextWay;
                }));
              },
              image: cardioContent[2].image,
              title: cardioContent[2].title,
              subtitle: cardioContent[2].minutes.toString() + ' min -- ' + cardioContent[2].level,

            ),
          ),

        ],
      ),
    );
  }
}

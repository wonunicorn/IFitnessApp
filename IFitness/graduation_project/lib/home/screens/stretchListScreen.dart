import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/home/components/listTile.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class StretchListScreen extends StatefulWidget {
  @override
  _StretchListScreenState createState() => _StretchListScreenState();
}

class _StretchListScreenState extends State<StretchListScreen> {
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
                  return stretchingContent[1].nextWay;
                }));
              },
              image: stretchingContent[1].image,
              title: stretchingContent[1].title,
              subtitle: stretchingContent[1].minutes.toString() + ' min -- ' + stretchingContent[1].level,

            ),
          ),
        ],
      ),
    );
  }
}

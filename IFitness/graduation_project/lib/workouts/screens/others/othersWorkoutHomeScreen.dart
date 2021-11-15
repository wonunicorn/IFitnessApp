import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/videoCard.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'othersWorkoutScreens.dart';

class OthersWorkoutHomeScreen extends StatefulWidget {
  @override
  _OthersWorkoutHomeScreenState createState() => _OthersWorkoutHomeScreenState();
}

class _OthersWorkoutHomeScreenState extends State<OthersWorkoutHomeScreen> {
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            VideoCard(
              title: othersWorkoutContent[0].title,
              time: othersWorkoutContent[0].minutes,
              calorie: othersWorkoutContent[0].calorie,
              level: othersWorkoutContent[0].level,
              image: othersWorkoutContent[0].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return OthersWorkoutScreen1();
                }));
              },
              shadowColor: n == 1 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              colorIcon: n == 1 ? krose: klight,
              iconPress: (){
                setState(() {
                  n = 1;
                });
              },
            ),
            VideoCard(
              title: othersWorkoutContent[1].title,
              time: othersWorkoutContent[1].minutes,
              calorie: othersWorkoutContent[1].calorie,
              level: othersWorkoutContent[1].level,
              image: othersWorkoutContent[1].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return OthersWorkoutScreen2();
                }));
              },
              colorIcon: n == 2 ? krose: klight,
              shadowColor: n == 2 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              iconPress: (){
                setState(() {
                  n = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

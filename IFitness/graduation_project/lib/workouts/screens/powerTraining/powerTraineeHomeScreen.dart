import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/videoCard.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'package:graduation_project/workouts/screens/powerTraining/powerTraineeScreens.dart';

class PowerTraineeHomeScreen extends StatefulWidget {
  @override
  _PowerTraineeHomeScreenState createState() => _PowerTraineeHomeScreenState();
}

class _PowerTraineeHomeScreenState extends State<PowerTraineeHomeScreen> {
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
              title: powerTrainingContent[0].title,
              time: powerTrainingContent[0].minutes,
              calorie: powerTrainingContent[0].calorie,
              level: powerTrainingContent[0].level,
              image: powerTrainingContent[0].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PowerTraineeScreen1();
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
              title: powerTrainingContent[1].title,
              time: powerTrainingContent[1].minutes,
              calorie: powerTrainingContent[1].calorie,
              level: powerTrainingContent[1].level,
              image: powerTrainingContent[1].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PowerTraineeScreen2();
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

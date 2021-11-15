import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/videoCard.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';
import 'stretchingScreens.dart';

class StretchingHomeScreen extends StatefulWidget {
  @override
  _StretchingHomeScreenState createState() => _StretchingHomeScreenState();
}

class _StretchingHomeScreenState extends State<StretchingHomeScreen> {

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
              title: stretchingContent[0].title,
              time: stretchingContent[0].minutes,
              calorie: stretchingContent[0].calorie,
              level: stretchingContent[0].level,
              image: stretchingContent[0].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return StretchingScreen1();
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
              title: stretchingContent[1].title,
              time: stretchingContent[1].minutes,
              calorie: stretchingContent[1].calorie,
              level: stretchingContent[1].level,
              image: stretchingContent[1].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return StretchingScreen2();
                }));
              },
              colorIcon: n == 2 ? krose: klight,
              shadowColor: n == 2 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              iconPress: (){
                n = stretchingContent[1].number;
                setState(() {
                  n = 2;
                });
              },
            ),
            VideoCard(
              title: stretchingContent[2].title,
              time: stretchingContent[2].minutes,
              calorie: stretchingContent[2].calorie,
              level: stretchingContent[2].level,
              image: stretchingContent[2].image,
              colorIcon: n == 3 ? krose: klight,
              shadowColor: n == 3 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              iconPress: (){
                n = stretchingContent[2].number;
                setState(() {
                  n = 3;
                });
              },
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return StretchingScreen3();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

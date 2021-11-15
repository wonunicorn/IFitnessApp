import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/listContent.dart';
import 'package:graduation_project/workouts/components/videoCard.dart';
import 'package:graduation_project/workouts/screens/cardio/cardioScreen.dart';
import 'package:graduation_project/workouts/components/workoutListContent.dart';

class CardioHomeScreen extends StatefulWidget {
  @override
  _CardioHomeScreenState createState() => _CardioHomeScreenState();
}

class _CardioHomeScreenState extends State<CardioHomeScreen> {

  int n = 0;
  final Set<WorkoutContent> _saved = new Set<WorkoutContent>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            VideoCard(
              title: cardioContent[0].title,
              time: cardioContent[0].minutes,
              calorie: cardioContent[0].calorie,
              level: cardioContent[0].level,
              image: cardioContent[0].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CardioScreen1();
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
              title: cardioContent[1].title,
              time: cardioContent[1].minutes,
              calorie: cardioContent[1].calorie,
              level: cardioContent[1].level,
              image: cardioContent[1].image,
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CardioScreen2();
                }));
              },
              colorIcon: n == 2 ? krose: klight,
              shadowColor: n == 2 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              iconPress: (){
                n = cardioContent[1].number;
                setState(() {
                  n = 2;
                });
              },
            ),
            VideoCard(
              title: cardioContent[2].title,
              time: cardioContent[2].minutes,
              calorie: cardioContent[2].calorie,
              level: cardioContent[2].level,
              image: cardioContent[2].image,
              colorIcon: n == 3 ? krose: klight,
              shadowColor: n == 3 ? krose.withOpacity(0.3) : klight.withOpacity(0.3),
              iconPress: (){
                n = cardioContent[2].number;
                setState(() {
                  n = 3;
                });
              },
              tap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CardioScreen3();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

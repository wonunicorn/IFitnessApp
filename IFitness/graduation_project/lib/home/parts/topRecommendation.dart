import 'package:flutter/material.dart';
import 'package:graduation_project/components/searchBox.dart';
import 'package:graduation_project/home/screens/cardioListScreen.dart';
import 'package:graduation_project/home/screens/othersListScreen.dart';
import 'package:graduation_project/home/screens/ptListScreen.dart';
import 'package:graduation_project/home/screens/stretchListScreen.dart';
import '../components/workoutCard.dart';

class TopWorkout extends StatefulWidget {
  @override
  _TopWorkoutState createState() => _TopWorkoutState();
}

class _TopWorkoutState extends State<TopWorkout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchBox(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    WorkoutCard(
                      tap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return CardioListScreen();
                        }));
                      },
                      image: 'asset/icons/cardio.png',
                      title: 'Cardio Workouts',
                    ),
                    WorkoutCard(
                      tap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return PtListScreen();
                        }));
                      },
                      image: 'asset/icons/fitness.png',
                      title: 'Power Training',
                    ),
                    WorkoutCard(
                      tap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return StretchListScreen();
                        }));
                      },
                      image: 'asset/icons/lotus.png',
                      title: 'Stretching',
                    ),
                    WorkoutCard(
                      tap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return OthersListScreen();
                        }));
                      },
                      image: 'asset/icons/jumping-rope.png',
                      title: 'Others Workouts',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



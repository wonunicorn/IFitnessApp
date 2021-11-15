import 'package:flutter/cupertino.dart';
import 'package:graduation_project/constants.dart';
import 'package:flutter/material.dart';

class WorkoutContent extends StatelessWidget {
  WorkoutContent({this.image, this.level, this.title,  this.description, this.exercises, this.minutes, this.calorie});

  final String title;
  final String description;
  final int exercises;
  final int minutes;
  final String level;
  final int calorie;
  final String image;


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: 250,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: kblue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        exercises.toString(),
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'exercises',
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        minutes.toString(),
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'min',
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        calorie.toString(),
                        style: TextStyle(
                          color:klight,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'kcal',
                        style: TextStyle(
                          color: klight,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 15, top: 10),
          child: Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}



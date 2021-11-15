import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class WorkoutCard extends StatelessWidget {
  WorkoutCard({
    this.time,
    this.title,
    this.image,
    this.tap,
    this.level,
});
  final String image;
  final String title;
  final int time;
  final String level;
  final Function tap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 200,
      width: 100,
      decoration: BoxDecoration(
        color: kblue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: GestureDetector(
        onTap: tap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image,
              height: 100,
              width: 80,
            ),
            Text(
              title.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

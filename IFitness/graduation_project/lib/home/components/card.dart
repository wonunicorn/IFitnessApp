import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class PrimaryCard extends StatelessWidget {
  PrimaryCard({
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
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 210,
      width: 250,
      decoration: BoxDecoration(
        color: kblue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: tap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              '$time min -- $level',
              style: TextStyle(
                color: klight,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

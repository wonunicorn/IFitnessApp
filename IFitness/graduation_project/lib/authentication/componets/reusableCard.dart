import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.cardChild, this.onPress});
  final Function onPress;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 140,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: kdarkblue,
          borderRadius: BorderRadius.circular(10.0) ,
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: cardChild,
      ),
    );
  }
}

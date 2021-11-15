import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    @override this.press, this.text, this.colour
  });

  final Function press;
  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kdarkblue,
      height: 45,
      margin: EdgeInsets.all(40),
      width: double.infinity,
      child: FlatButton(
        color: colour,
        textColor: kdarkblue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
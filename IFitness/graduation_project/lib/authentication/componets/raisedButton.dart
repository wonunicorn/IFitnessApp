import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class RaisedButtonContent extends StatelessWidget {
  RaisedButtonContent({this.text, this.onTap});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: RaisedButton(
        splashColor: kblue,
        highlightColor: kblue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.white,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            fontSize: 17,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

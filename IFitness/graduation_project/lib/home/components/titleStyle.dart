import 'package:flutter/material.dart';

class TitleStyle extends StatelessWidget {
  TitleStyle({@required this.title, @required this.press});
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: press,
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 20,
              ),
              ),
          ),
        ],
      ),
    );
  }
}

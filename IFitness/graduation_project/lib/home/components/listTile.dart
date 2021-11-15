import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class ListTileContent extends StatelessWidget {
  ListTileContent(
      {@required this.press, this.image, this.title, this.subtitle});
  final String image;
  final String title;
  final String subtitle;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kblue,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: ListTile(
        leading: Image.asset(
          image,
        ),
        title: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 13,
            color: krose,
          ),
        ),
        onTap: press,
        isThreeLine: true,
        trailing: Icon(Icons.arrow_right, color: Colors.white,),
      ),
    );
  }
}

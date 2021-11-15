import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class VideoCard extends StatelessWidget {
  VideoCard({this.isFavorite, this.shadowColor, this.tap, this.calorie, this.image, this.title, this.time, this.level, this.colorIcon, this.iconPress});
  final String image;
  final String title;
  final int time;
  final String level;
  final Color colorIcon;
  final Function iconPress;
  final int calorie;
  final Function tap;
  final Color shadowColor;
  final bool isFavorite;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: size.width * 0.85,
        height: size.height * 0.4,
        decoration: BoxDecoration(
          color: kblue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: MaterialButton(
                onPressed: tap,
                child: Image.asset(
                  image,
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Text(
                            title.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          '$time min --- $calorie kcal --- $level',
                          style:TextStyle(
                            color: klight,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}


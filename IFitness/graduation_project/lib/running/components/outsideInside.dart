import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';

class OutsideInside extends StatefulWidget {
  @override
  _OutsideInsideState createState() => _OutsideInsideState();
}

class _OutsideInsideState extends State<OutsideInside> {
  int choice = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.directions_run,
                  size: 35,
                  color: choice == 0 ? kpurplegradient : kdarkblue,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    choice = 0;
                  });
                },
                child: Text(
                  'outside',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                    color: choice == 0 ? kpurplegradient : kblue,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              '.',
              style: TextStyle(
                fontSize: size.width * 0.08,
                color: Colors.white,
            ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.run_circle_outlined,
                  size: 35,
                  color: choice == 1 ? kpurplegradient : kdarkblue,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    choice = 1;
                  });
                },
                child: Text(
                  'inside',
                  style: TextStyle(
                    color: choice == 1 ? kpurplegradient : kblue,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

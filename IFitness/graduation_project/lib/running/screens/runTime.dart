import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graduation_project/constants.dart';
import 'dart:async';
import '../../home.dart';

class RunningTime extends StatefulWidget {
  @override
  _RunningTimeState createState() => _RunningTimeState();
}

class _RunningTimeState extends State<RunningTime> {
  static const duration = const Duration(seconds: 1);
  int secondPassed = 0;
  bool isActive = true;
  Timer timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondPassed = secondPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
    int seconds = secondPassed % 60;
    int minutes = secondPassed ~/ 60;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kdarkblue,
      appBar: AppBar(
        leading: new IconButton(
          icon: Icon(
            Icons.close,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Home();
            }));
          },
        ),
        backgroundColor: kdarkblue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                minutes.toString().padLeft(2, '0'),
                style: TextStyle(
                  fontSize: size.width * 0.25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text('minutes',
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: kgreyblue,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                seconds.toString().padLeft(2, '0'),
                style: TextStyle(
                  fontSize: size.width * 0.25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text('seconds',
                      style: TextStyle(
                        color: kpurplegradient,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.04,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            width: size.width * 0.4,
            height: size.height * 0.055,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: kbluegreen,
              onPressed: () {
                setState(() {
                  isActive = !isActive;
                });
              },
              child: Icon(
                isActive ? Icons.pause : Icons.play_arrow,
                color: kdarkblue,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
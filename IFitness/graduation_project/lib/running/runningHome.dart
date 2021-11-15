import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/running/screens/runTime.dart';
import 'package:graduation_project/running/components/outsideInside.dart';

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kdarkblue,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: kdarkblue,
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutsideInside(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15,
                  ),
                  child: Text(
                    'RUN',
                    style: TextStyle(
                      fontSize: size.width * 0.16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        kpurplegradient,
                        kbluegreen,
                      ],
                      stops: [0.2, 1],
                    ),
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        settings: RouteSettings(name: "/PageRun"),
                          builder:(context){
                        return RunningTime();
                      }));
                    },
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ),
      ),
    );
  }
}


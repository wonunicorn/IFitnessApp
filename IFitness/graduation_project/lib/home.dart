import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:graduation_project/home/newsFeed.dart';
import 'package:graduation_project/profile/profileHome.dart';
import 'package:graduation_project/progress/progressHome.dart';
import 'package:graduation_project/running/runningHome.dart';
import 'package:graduation_project/workouts/workoutsHome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    NewsFeed(),
    Workouts(),
    Run(),
    Progress(),
    UserProfile(),
  ];

  Widget currentScreen = NewsFeed();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kdarkblue,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      floatingActionButton: Container(
        child: FloatingActionButton(
          child: Icon(Icons.directions_run,
          ),
          backgroundColor: kpurplegradient,
          onPressed:(){
            setState(() {
              currentTab = -1;
              currentScreen = Run();
            });
          },
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          color: kblue,
          height: 70,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  title: 'home',
                  icon: Icons.home,
                  colour: currentTab == 0 ? krose : klightblue,
                  press: (){
                    setState(() {
                      currentTab = 0;
                      currentScreen = NewsFeed();
                    });
                  },
                ),
                Button(
                  title: 'workout',
                  icon: Icons.now_widgets_outlined,
                  colour: currentTab == 1 ? krose : klightblue,
                  press: (){
                    setState(() {
                      currentTab = 1;
                      currentScreen = Workouts();
                    });
                  },
                ),
                Button(
                  title: 'progress',
                  icon: Icons.assessment_outlined,
                  colour: currentTab == 3 ? krose : klightblue,
                  press: (){
                    setState(() {
                      currentTab = 3;
                      currentScreen = Progress();
                    });
                  },
                ),
                Button(
                  title: 'profile',
                  icon: Icons.person_rounded,
                  colour: currentTab == 4 ? krose : klightblue,
                  press: (){
                    setState(() {
                      currentTab = 4;
                      currentScreen = UserProfile();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({this.colour, this.press, this.title, this.icon});

  final Function press;
  final String title;
  final IconData icon;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialButton(
      minWidth: size.width * 0.04,
      onPressed: press,
      child: Column(
        children: [
          Icon(icon,
              color: colour),
          Text(
            title,
            style: TextStyle(
              color: colour,
              fontSize: size.width * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
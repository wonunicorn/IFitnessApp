import 'package:flutter/material.dart';
import 'package:graduation_project/workouts/screens/others/othersWorkoutHomeScreen.dart';
import 'package:graduation_project/workouts/screens/powerTraining/powerTraineeHomeScreen.dart';
import 'package:graduation_project/workouts/screens/stretching/stretchingHomeScreen.dart';
import 'screens/cardio/cardioHomeScreen.dart';
import 'package:graduation_project/components/searchBox.dart';
import 'package:graduation_project/constants.dart';

class Workouts extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}

class _WorkoutsState extends State<Workouts> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SearchBox(),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: TabBar(
              isScrollable: true,
              indicatorColor: krose,
              unselectedLabelColor: klight,
              labelColor: krose,
              tabs: [
                Tab(
                  child: Text(
                    'Cardio',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Power Training',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Stretching',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Others',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                CardioHomeScreen(),
                PowerTraineeHomeScreen(),
                StretchingHomeScreen(),
                OthersWorkoutHomeScreen(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}

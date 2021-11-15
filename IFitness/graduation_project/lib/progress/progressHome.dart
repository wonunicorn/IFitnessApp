import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/componets/raisedButton.dart';
import 'package:graduation_project/constants.dart';
import '../authentication/componets/reusableCard.dart';
import '../authentication/services/auth.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> with SingleTickerProviderStateMixin{
  String weight = "";
  var weightChanging = <String>[];
  int fixedWeight = 60;

  LineChartData sampleData1(){
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: krose,
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
        ),
        leftTitles: SideTitles(
          showTitles: true,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
            color: klight,
            width: 1.5,
          ),
          left: BorderSide(
            color: klight,
            width: 1.5,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: weightChanging.length.toDouble(),
      maxY: 90,
      minY: 40,
      lineBarsData: linesBarData(),
    );
  }

  List<FlSpot> getElements(){
    List<FlSpot> fl = [];
    for(int i = 0; i < weightChanging.length; i++){
      fl.add( FlSpot(i.toDouble(), double.parse(weightChanging[i])));
    }
    return fl;
  }

  List<LineChartBarData> linesBarData(){
    final LineChartBarData lineChartBarData = LineChartBarData(
      spots: getElements(),
      isCurved: true,
      colors: [klight],
      dotData: FlDotData(
        show: true,
      ),
      belowBarData: BarAreaData(
        show: true,
        colors: [
          klight.withOpacity(0.4),
        ],
      ),
    );
    return [ lineChartBarData];
  }
  getUserData()async {
    dynamic data = await Auth().getUserInitialWeight();
    setState(() {
      weight = data;
      weightChanging.add(weight);
    });
  }
  setNewData() async{
   await Auth().updateUserWeight(fixedWeight.toString());
    setState(() {
      weight = fixedWeight.toString();
      weightChanging.add(weight);
    });
  }

  @override
  void initState() {
    FirebaseAuth.instance.currentUser;
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                'Progress Screen',
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white,
                    ),
                    color: kdarkblue,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text(
                    'Initial weight: ${weightChanging[0]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
                Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white,
                    ),
                    color: kdarkblue,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Text(
                    'New weight: $weight',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
            ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WEIGHT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        fixedWeight.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '  kg',
                        style: TextStyle(
                          color: klight,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.pink[300],
                      inactiveTrackColor: kblue,
                      thumbColor: krose,
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                    ),
                    child: Slider(
                      value: fixedWeight.toDouble(),
                      min: 40.0,
                      max: 180.0,
                      onChanged: (double newValue) {
                        setState(() {
                          fixedWeight = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            RaisedButtonContent(
              text: "UPDATE",
              onTap: () {
                setNewData();
              },
            ),
      Container(
        height: 400,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kdarkblue,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: Colors.white,
              width: 1.5
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Progress Line Graph',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                child: LineChart(sampleData1()),
              ),
            ),
          ],
        ),
      ),
      ],
    ),
    ),
    );
  }
}













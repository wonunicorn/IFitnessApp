import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/workouts/components/generalContent.dart';
import 'package:graduation_project/workouts/components/videoCard.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: (){
        showSearch(
          context: context,
          delegate: DataSearch()
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 40,
        width: size.width * 0.85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Search...',
                  style: TextStyle(
                    color:  kdarkblue,
                    fontSize: size.width * 0.032,
                  ),
                ),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  color: kdarkblue,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
            itemCount: allWorkoutsContent.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return allWorkoutsContent[index].nextWay;
                      }));
                    },
                    title: Text(allWorkoutsContent[index].title),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(allWorkoutsContent[index].image),
                    ),
                  ),
                ),
              );
            },
          );
  }
}

class DataSearch extends SearchDelegate<String> {

  final workoutTitle = allWorkoutsContent.map((object) => object.title);
  final recommends = [
    'Killer HIIT CARDIO workout',
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: kdarkblue,
      textTheme: TextTheme(
        headline6: TextStyle(
        color: Colors.white,
      ),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon ont the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    final element = allWorkoutsContent.indexWhere((t) => t.title.startsWith(query));

    // show some result based on the selection
    return Center(
      child: VideoCard(
        title: allWorkoutsContent[element].title,
        time: allWorkoutsContent[element].minutes,
        calorie: allWorkoutsContent[element].calorie,
        level: allWorkoutsContent[element].level,
        image: allWorkoutsContent[element].image,
        tap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return allWorkoutsContent[element].nextWay;
          }));
        },
      ),
    );
  }

  bool equalsIgnoreCase(String string1, String string2) {
    return string1?.toLowerCase() == string2?.toLowerCase();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something

    final tallWorkoutsContent = query.isEmpty ? recommends : workoutTitle.where((element) => element.startsWith(query)).toList() ;

    return ListView.builder(
      itemCount: tallWorkoutsContent.length,
      itemBuilder: (context, index) => ListTile(
      leading: Icon(Icons.play_arrow),
          onTap: () {
            showResults(context);
          },
          title: RichText(
            text: TextSpan(
              text: tallWorkoutsContent[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: tallWorkoutsContent[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/services/auth.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/profile/editScreen.dart';
import 'package:intl/intl.dart';

 class HeaderProfile extends StatefulWidget {
  @override
  _HeaderProfileState createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {

  User _user = FirebaseAuth.instance.currentUser;
  FirebaseAuth _auth = FirebaseAuth.instance;
  String userName = '';

  getName()async{
    dynamic name = await Auth().getUserName();
    setState(() {
      userName = name;
    });
  }

  @override
  void initState() {
    FirebaseAuth.instance.currentUser;
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: _screenHeight * 0.54,
            margin: EdgeInsets.only(
              top: 45,
              left: 30,
              right: 30,
              bottom: 20,
            ),
            padding: EdgeInsets.only(top: 40, bottom: 20),
            decoration: BoxDecoration(
              color: kblue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Text(
                      'Email:  ${_user.email.toString()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Text(
                     "Created:  ${DateFormat('MM/dd/yyyy').format(
                       _user.metadata.creationTime
                     )}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 15, bottom: 35),
                  //   child: Container(
                  //     height: 35,
                  //     width: 160,
                  //     child: RaisedButton(
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       onPressed: (){},
                  //       color: Colors.white,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           Text(
                  //             'Favourites',
                  //             style: TextStyle(
                  //               color: kpurplegradient,
                  //               fontSize: 16,
                  //             ),
                  //           ),
                  //           Icon(
                  //             Icons.play_arrow,
                  //             color: kpurplegradient,
                  //             size: 15,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: klight.withOpacity(0.3),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(
                                  Icons.edit, size: 25,
                                  color: klight),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return EditScreenState();
                                }));
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 50,
                          width: 10,
                          child: VerticalDivider(
                            color: klight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: klight.withOpacity(0.3),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon:
                              Icon(
                                Icons.exit_to_app, size: 25,
                                color:klight,
                              ),
                              onPressed: () {
                                _auth.signOut();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/images/logo.PNG'),
                radius: _screenWidth * 0.15,
                backgroundColor: Colors.white,
                foregroundColor: krose,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

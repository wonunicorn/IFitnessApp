import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/profile/components/headerProfile.dart';
import 'package:graduation_project/constants.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkblue,
        body: Container(
          margin: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  HeaderProfile(),
                ],
              ),
            ),
    );
  }
}

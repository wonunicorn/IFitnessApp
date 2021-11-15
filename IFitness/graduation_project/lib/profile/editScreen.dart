import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/componets/raisedButton.dart';
import 'package:graduation_project/authentication/componets/textFieldContent.dart';
import 'package:graduation_project/authentication/services/auth.dart';
import 'package:graduation_project/constants.dart';
import '../home.dart';

class EditScreenState extends StatefulWidget {
  @override
  _EditScreenStateState createState() => _EditScreenStateState();
}

class _EditScreenStateState extends State<EditScreenState> {
  final TextEditingController _fullNameTextEditingController = TextEditingController();

  User updateUser = FirebaseAuth.instance.currentUser;

  updateUserData() async {
      await Auth().updateUserName(_fullNameTextEditingController.text.trim());
      Navigator.push(context, MaterialPageRoute(builder: (context){return Home();}));

  }

    @override
    void initState() {
      FirebaseAuth.instance.currentUser;
      super.initState();
    }
    @override
    Widget build(BuildContext context) {
      double _screenWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        backgroundColor: kdarkblue,
        appBar: AppBar(
          backgroundColor: kdarkblue,
        ),
        body: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Do you want to change your name?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFieldContent(
              obscure: false,
              maxLength: 20,
              hintText: 'Full Name',
              controller: _fullNameTextEditingController,
              prefixIcon: Icon(Icons.person),
            ),
            RaisedButtonContent(
              text: 'UPDATE',
              onTap: () {
                _fullNameTextEditingController.text != null ?
                updateUserData() :
                Auth().flutterToast('Can\'t change youe name!');
              },
            ),
          ],
        ),
      );
    }
  }


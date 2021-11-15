import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:graduation_project/authentication/model/users.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Auth{
  FirebaseAuth _auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  flutterToast(String text){
    return Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.pink[600],
        textColor: Colors.white,
        fontSize: 16
    );
  }

  Future getUserName() async{
    String name;
    await users.doc(_auth.currentUser.uid).get().then((ds){
     name = ds.get('name');
    });
   return name;
  }

  Future getUserInitialWeight() async{
    String weight;
      await users.doc(_auth.currentUser.uid).get().then((ds){
        weight = ds.get('weight');
      });
      return weight;
  }

  Future getUserNewWeight() async{
    String weight;
    await users.doc(_auth.currentUser.uid).get().then((ds){
      weight = ds.get('newWeight');
    });
    return weight;
  }

  Future updateUserName(String name)async {
    try{
      await users.doc(_auth.currentUser.uid).update({
        'name': name,
      });
    }catch(e){
      print(e);
    }
  }


  Future updateUserWeight(String weight) async{
    await users.doc(_auth.currentUser.uid).update({
      'newWeight': weight,
    });
  }

  Stream<Users> get currentUser {
    return _auth.onAuthStateChanged.map(
          (User firebaseUser)  => firebaseUser != null
              ? Users(uid: firebaseUser.uid)
      : null,
    );
  }
}
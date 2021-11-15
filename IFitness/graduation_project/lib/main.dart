import 'package:flutter/material.dart';
import 'package:graduation_project/landing.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/model/users.dart';
import 'authentication/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users>.value(
      value: Auth().currentUser,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Root()),
        ),
    );
  }
}

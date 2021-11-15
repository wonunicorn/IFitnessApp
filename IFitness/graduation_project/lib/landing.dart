import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/register.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'authentication/model/users.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Users _user = Provider.of<Users>(context);
    return (_user != null)
        ? Home() : RegisterState();
  }
}

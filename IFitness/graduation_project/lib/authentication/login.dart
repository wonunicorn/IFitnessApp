import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/register.dart';
import 'package:graduation_project/authentication/services/auth.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/authentication/componets/textFieldContent.dart';
import 'package:graduation_project/home.dart';
import 'componets/raisedButton.dart';

class LogInState extends StatefulWidget {
  @override
  _LogInStateState createState() => _LogInStateState();
}

class _LogInStateState extends State<LogInState> {

  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();
  bool _showPassword = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  loginUser() async{
    try{
      await Firebase.initializeApp();
      UserCredential user = await _auth.signInWithEmailAndPassword(
          email: _emailTextEditingController.text.trim(),
          password: _passwordTextEditingController.text.trim());
      Navigator.push(context, MaterialPageRoute(builder: (context){return Home();}));
    }on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        Auth().flutterToast("The password is weak");
      }else if(e.code == 'email-already-in-use'){
        Auth().flutterToast("The email is already used");
      }
    } catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 20),
          child: Text(
            'IFitness',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextFieldContent(
          obscure: false,
          hintText: 'Email',
          maxLength: 20,
          controller: _emailTextEditingController,
          prefixIcon: Icon(Icons.email),
        ),
        TextFieldContent(
          obscure: _showPassword ? false : true,
          hintText: 'Password',
          maxLength: 8,
          controller: _passwordTextEditingController,
          prefixIcon: Icon(Icons.security),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                this._showPassword = !this._showPassword;
              });
            },
            icon: Icon(Icons.remove_red_eye),
            color: this._showPassword ? Colors.pink[200] : kblue,
          ),
        ),
        RaisedButtonContent(
          text: 'LOGIN',
          onTap: (){
            _emailTextEditingController.text.isNotEmpty && _passwordTextEditingController.text.isNotEmpty ?
            loginUser() :
            Auth().flutterToast('Can\'t SignIn you! Please check your email or password');
          },
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            child: Text.rich(
              TextSpan(
                text: 'Not registered yet? ',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: ' Register!',
                    style: TextStyle(
                      fontSize: 17,
                      color: klight,
                    ),
                  ),
                ],
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return RegisterState();}));
            },
          ),
        ),
      ],
    );
  }
}

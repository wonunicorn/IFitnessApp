import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/authentication/login.dart';
import 'package:graduation_project/authentication/services/auth.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/authentication/componets/textFieldContent.dart';
import 'package:graduation_project/home.dart';
import 'componets/raisedButton.dart';
import 'componets/reusableCard.dart';

class RegisterState extends StatefulWidget {
  @override
  _RegisterStateState createState() => _RegisterStateState();
}

class _RegisterStateState extends State<RegisterState> with SingleTickerProviderStateMixin{

  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();
  final TextEditingController _fullNameTextEditingController = TextEditingController();
  final TextEditingController _cPasswordTextEditingController = TextEditingController();
  bool _showPassword1 = false;
  bool _showPassword2 = false;
  
  FirebaseAuth _auth = FirebaseAuth.instance;

  int initialWeight = 60;
  int initialHeight = 180;
  TabController _tabController;

  transferLogin(){
   return Padding(
     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
     child: GestureDetector(
       child: Text.rich(
         TextSpan(
           text: 'Already register? ',
           style: TextStyle(
             fontSize: 17,
             color: Colors.white,
           ),
           children: [
             TextSpan(
               text: ' Login!',
               style: TextStyle(
                 fontSize: 17,
                 color: klight,
               ),
             ),
           ],
         ),
       ),
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){return LogInState();}));
       },
     ),
   );
  }

  Future<void> RegisterUserState() async{
   try{
     UserCredential result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextEditingController.text.trim(), password: _passwordTextEditingController.text.trim());
     await FirebaseFirestore.instance.collection('users').doc(_auth.currentUser.uid).set({
       'name': _fullNameTextEditingController.text.trim(),
       'email': _emailTextEditingController.text.trim(),
       'weight': initialWeight.toString(),
       'height': initialHeight.toString(),
       'accountedCreated': Timestamp.now(),
       'newWeight': null,
     });
     Navigator.push(context, MaterialPageRoute(builder: (context){return Home();}));
   }catch(e){
     print(e);
   }
  }

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this,);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kdarkblue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 15),
              child: Text(
                'IFitness',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30,top: 5, bottom: 25),
              child: TabBar(
                indicatorColor: klight,
                unselectedLabelColor: krose,
                labelColor: klight,
                tabs: [
                  Tab(
                    child: Text(
                      'Step 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Step 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(child: TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFieldContent(
                        obscure: false,
                        maxLength: 20,
                        hintText: 'Full Name',
                        controller: _fullNameTextEditingController,
                        prefixIcon: Icon(Icons.person),
                      ),
                      TextFieldContent(
                        obscure: false,
                        hintText: 'Email',
                        maxLength: 20,
                        controller: _emailTextEditingController,
                        prefixIcon: Icon(Icons.email),
                      ),
                      TextFieldContent(
                        obscure: _showPassword1 ? false : true,
                        hintText: 'Password',
                        maxLength: 8,
                        controller: _passwordTextEditingController,
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              this._showPassword1 = !this._showPassword1;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye),
                          color: this._showPassword1 ? Colors.pink[200] : kblue,
                        ),
                      ),
                      TextFieldContent(
                        obscure: _showPassword2 ? false : true,
                        hintText: 'Confirm password',
                        maxLength: 8,
                        controller: _cPasswordTextEditingController,
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              this._showPassword2 = !this._showPassword2;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye),
                          color: this._showPassword2 ? Colors.pink[200] : kblue,
                        ),
                      ),
                      transferLogin(),
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
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
                              initialHeight.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              '  cm',
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
                            value: initialHeight.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                initialHeight = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
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
                              initialWeight.toString(),
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
                            value: initialWeight.toDouble(),
                            min: 40.0,
                            max: 180.0,
                            onChanged: (double newValue) {
                              setState(() {
                                initialWeight = newValue.round();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                        RaisedButtonContent(
                          text: "REGISTER",
                          onTap: () {
                            if(_fullNameTextEditingController.text.isEmpty || _cPasswordTextEditingController.text.isEmpty ||
                                _emailTextEditingController.text.isEmpty || _passwordTextEditingController.text.isEmpty
                            ){
                              Auth().flutterToast('Can\'t register you! Please check the fields below.');
                            } else if(_passwordTextEditingController.text.toString() != _cPasswordTextEditingController.text.toString()){
                              Auth().flutterToast('These passwords don\'t match!');
                            }else{
                              RegisterUserState();
                            }
                          },
                        ),
                        transferLogin(),
                      ],
                    ),
                  ),
                ),
              ],
              controller: _tabController,
            ),),
          ],
        ),
      )
    );
  }
}


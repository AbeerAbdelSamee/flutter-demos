import 'package:flutter/material.dart';
import 'package:flutter_course/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _authService =  AuthService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:Colors.brown[50] ,
      appBar: AppBar(
        title: Text('Pidge'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () {
              print("pressed logout button");
              _authService.signOut();
            },
          )
        ],)
        ,);
  }
  
}
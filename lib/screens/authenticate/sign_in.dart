import 'package:flutter/material.dart';
import '../../services/auth.dart';
class SignIn extends StatefulWidget{
  _SignInState createState () => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        elevation: 0.0,
        title: Text('Sign in pidge')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical:20.0,horizontal:50.0),
        child: RaisedButton(
          child: Text('Sign in anonaymous '),
          onPressed: () async {
           dynamic res = await _auth.signInAnonaymous();
           if(res == null ){
             print('error signing in ');
           } else {
             print('signed in');
             print (res.uid);
           }
           
          },
        ),
      ),
      );
  }
  
}
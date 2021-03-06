import 'package:flutter/material.dart';
import 'package:flutter_course/models/user.dart';
import 'package:provider/provider.dart';
import './home/home.dart';
import './authenticate/authenticate.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    // TODO: implement build
    // return Home or Authenticate page
    if(user == null ) {
      return Authenticate();
    } else {
      return Home();
    }
  }
  
}
import 'package:flutter/material.dart';
import 'package:flutter_course/services/auth.dart';
import './firstpage.dart';
import './secondpage.dart';
import './screens/wrapper.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
    value: AuthService().user,
    child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wrapper(),
    ));
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
         title: Text("Abeer AbdelSamee"),
      ),
      body: MyList(),);   
    
  }
}
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: EdgeInsets.all(4.0),
      itemBuilder: ( context, i) {
      return ListTile(
        title: Text('Some random username'),
        subtitle: Text('online'),
        leading: Icon(Icons.face),
        trailing: RaisedButton(
          child: Text("Remove"),
          onPressed: () { 
            deleteDialog(context).then((value) {
              print("Value is $value");
            });
          },
          ),
      );
     },
    );
  }
}
Future<bool> deleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Are you sure'),
        actions: <Widget>[
          FlatButton(
            child: Text('yes'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          )
        ],
        );
    }
  );
}


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  _showSnackBar() {
    final snackBar = SnackBar(
      content: Row(
        children: <Widget>[
          Icon(Icons.thumb_up),
          SizedBox(
            width: 10.0,
          ),
          SizedBox(
            child: Text(
              'Hey I am a SnackBar !',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.blue,
    );

    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Snack Bar Widget'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.blue,
            child: Text(
              'Notification Message',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {
              _showSnackBar();
            },
          ),
        ),
      ),
    );
  }
}

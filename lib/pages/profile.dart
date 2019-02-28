import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Placeholder'),
      ),
      body: Column(children: <Widget>[
        Text('Profile Here'),
        RaisedButton(
          child: Text('Back'), 
          onPressed: () => Navigator.pop(context),
          )
      ]),
    );
  }
}

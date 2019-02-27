import 'package:flutter/material.dart';

class FeedControl extends StatelessWidget {
  final Function updateFeed;

  FeedControl(this.updateFeed);
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        updateFeed('Jerry');
      },
      child: Text('Connect'),
    );
  }
}

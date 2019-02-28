import 'package:flutter/material.dart';

import './pages/profile.dart';

class Feed extends StatelessWidget {
  final List<String> inNeeds;

  Feed(this.inNeeds);

  Widget _buildFeedItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/hum_shake_logo.jpg'),
          Text(inNeeds[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage(),
                        ),
                      ))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return inNeeds.length > 0
        ? ListView.builder(
            itemBuilder: _buildFeedItem,
            itemCount: inNeeds.length,
          )
        : Container(child: Text('No people found.'));
  }
}

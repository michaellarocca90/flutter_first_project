import 'package:flutter/material.dart';

import './feed.dart';

import './feed_control.dart';

class FeedManager extends StatefulWidget {
  final String startingFeed;

  FeedManager(this.startingFeed);

  @override
  State<StatefulWidget> createState() {
    return _FeedManagerState();
  }
}

class _FeedManagerState extends State<FeedManager> {
  List<String> _inNeeds = [];

  @override
  void initState() {
    super.initState();

    if (widget.startingFeed != null){
      _inNeeds.add(widget.startingFeed);
    }
    
  }

  @override
  void didUpdateWidget(FeedManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _updateFeed(String inNeed) {
    setState(() {
      _inNeeds.add(inNeed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: FeedControl(_updateFeed),
        ),
        Expanded(child: Feed(_inNeeds))
      ],
    );
  }
}

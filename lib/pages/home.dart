import 'package:flutter/material.dart';
// import '../feed_card.dart';
import '../feed2.dart';
// import '../feed_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Hum')
          ),
          body: Feed2()
          );
  }
}
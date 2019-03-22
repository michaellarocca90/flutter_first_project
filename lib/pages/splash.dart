import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override

    Widget(BuildContext context){
      return Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
             ) 
          )
        ],
      )
    }
}
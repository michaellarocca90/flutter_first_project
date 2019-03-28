import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  // final Map inNeed;

  // FeedCard(this.inNeed);

//button will have alignment.bottomleft
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                height: (MediaQuery.of(context).size.height) / 2.7,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset('assets/Splash_wider.jpg'),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Ink(
                        decoration: ShapeDecoration(
                          color: Colors.purple,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.add_circle),
                          color: Colors.black45,
                          onPressed: () {
                            print(MediaQuery.of(context).size.width);
                          },
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}

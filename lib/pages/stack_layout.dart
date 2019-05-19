import 'package:flutter/material.dart';

class StackDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stack绝对定位',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown,
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
//              未定位widget占满Stack整个空间
            fit: StackFit.expand,
            children: <Widget>[
//              第一个子Widget被第二个遮住
              Positioned(
                left: 18,
                child: Text(
                  "I'm left",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Container(
                child: Text("Hello world",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                color: Colors.brown,
              ),
              Positioned(
                top: 18,
                child: Text(
                  "I'm top",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              )
            ],
          ),
        ));
  }
}

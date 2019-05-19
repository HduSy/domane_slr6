import 'package:flutter/material.dart';

class WrapDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow[300],
      ),
      body: Wrap(
        spacing: 8,
        runSpacing: 4,
        alignment: WrapAlignment.center,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('H'),
            ), 
              label: Text('Hamilton')
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('L'),
            ),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('M'),
              backgroundColor: Colors.red,
            ),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar: CircleAvatar(
              child: Text('S'),
              backgroundColor: Colors.purple,
            ),
            label: Text('SongYao'),
          )
        ],
      ),
    );
  }
}

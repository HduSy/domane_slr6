import 'package:flutter/material.dart';

class FlexLayoutDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flex&Expanded',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Colors.lightGreen,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30,
                  color: Colors.lightBlue,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 100,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30,
                      color: Colors.lightGreen,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:domane_slr6/pages/second_page.dart';
import 'package:domane_slr6/pages/random_word_widget.dart';
import 'package:domane_slr6/pages/echo.dart';
void main() => runApp(MyApp());

//应用结构
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    Flutter APP框架
    return MaterialApp(
      title: 'Domane Slr6',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Domane'),
    );
  }
}

//首页
class MyHomePage extends StatefulWidget {
  final String title;

  //命名参数
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  状态
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

//  构建UI界面
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    页面脚手架
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have clicked the add button',
              style: TextStyle(fontSize: 22, color: Colors.lightBlue),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 36, color: Colors.lightBlue),
            ),
            FlatButton(
              child: Text(
                'Open the Second Route.',
                style: TextStyle(fontSize: 22, color: Colors.lightBlue),
              ),
//              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
            RandomWordsWidget(),
            Echo(
              text: 'Hello Flutter',
              backgroundColor: Colors.lightBlue[100],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
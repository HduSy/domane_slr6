import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('Open a new Route'),
              textColor: Colors.lightBlue,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return NewRoute();
                }));
              },
            ),
            RandomWordsWidget(),
            Echo(text: 'Hello Flutter',backgroundColor: Colors.lightBlue,)
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

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Route',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'This is a new route.',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        wordPair.toString(),
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const Echo({Key key, @required this.text, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}

class SecondCounter extends StatefulWidget{
  @override
  _SecondCounterState createState()=> new _SecondCounterState();
}
class _SecondCounterState extends State<SecondCounter>{
  int _counter = 0;
  void increment(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
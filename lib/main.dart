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
              style: TextStyle(fontSize: 22,color: Colors.lightBlue),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 36, color: Colors.lightBlue),
            ),
            FlatButton(
              child: Text('Open the Second Route.',style: TextStyle(fontSize: 22,color: Colors.lightBlue),),
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

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Route',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: FlatButton(
            onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SecondCounter();
                  }))
                },
            child: Text(
              'Open the Third Route.',
              style: TextStyle(fontSize: 22, color: Colors.green),
            )),
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
        wordPair.asPascalCase.toString(),
        style: TextStyle(fontSize: 22,color: Colors.lightBlue,),
      ),
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const Echo({Key key, @required this.text, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text,style: TextStyle(fontSize: 22,color: Colors.lightBlue),),
      ),
    );
  }
}

class SecondCounter extends StatefulWidget {
  final int initValue;

  SecondCounter({Key key, this.initValue: 0}) : super(key: key);

  @override
  _SecondCounterState createState() => new _SecondCounterState();
}

class _SecondCounterState extends State<SecondCounter> {
  int _counter;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
    print('init');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Third Route',style: TextStyle(color: Colors.white),),backgroundColor: Colors.purple,),
      body: Center(
        child: FlatButton(
            onPressed: () => _incrementCounter(),
            child: Text(
              '$_counter',
              style: TextStyle(fontSize: 36, color: Colors.purple),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _incrementCounter(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        tooltip: 'incrementNum',
        backgroundColor: Colors.purple,
      ),
    );
  }

  @override
  void didUpdateWidget(SecondCounter oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdate');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactive');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SecondCounter();
  }
}

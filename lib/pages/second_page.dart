import 'package:flutter/material.dart';
import 'package:domane_slr6/pages/fourth_page.dart';

// 生命周期示例
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SecondCounter();
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
      if (_counter == 5) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return FourRoute();
        }));
      }
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
      appBar: AppBar(
        title: Text(
          'Third Route',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
              onPressed: () => _incrementCounter(),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 36, color: Colors.purple),
              )),
          Text(
            'If you add the Num to 5 then open the FourthRoute.',
            style: TextStyle(fontSize: 18),
          )
        ],
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

import 'package:flutter/material.dart';

class SwitchAndCheckBoxTest extends StatefulWidget {
  _SwitchAndCheckBoxTestState createState() =>
      new _SwitchAndCheckBoxTestState();
}

TextEditingController _unameController = new TextEditingController();
TextEditingController _upassController = new TextEditingController();
TextEditingController _selectionController = new TextEditingController();
class _SwitchAndCheckBoxTestState extends State<SwitchAndCheckBoxTest> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;
//监听输入框文本变化方式二：不起作用啊
  @override
  void initState() {
    // TODO: implement initState
    _unameController.addListener(() {
      print('The password changed.');
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'widgets',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
              activeColor: Colors.pink,
              value: _switchSelected,
              onChanged: (val) {
                setState(() {
                  _switchSelected = val;
                });
              }),
          Checkbox(
              activeColor: Colors.pink,
              value: _checkboxSelected,
              onChanged: (val) {
                setState(() {
                  _checkboxSelected = val;
                });
              }),
          TextField(
            autofocus: true,
            controller: _unameController,
            decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或邮箱',
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.pink,
                )),
//            监听输入框文本变化方式一
//            onChanged: (v) {
//              print('onChange:$v');
//            },
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.pink,
                )),
            obscureText: true,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: '文本选择',
              prefixIcon: Icon(Icons.text_fields,color: Colors.pink,)
            ),
            controller: _selectionController,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.access_time,
            color: Colors.white,
          ),
          tooltip: 'Show your login info.',
          backgroundColor: Colors.pink,
          onPressed: () {
            _selectionController.text="hello world!";
            _selectionController.selection = TextSelection(baseOffset: 2, extentOffset: _selectionController.text.length);
            print('Username:' + _unameController.text);
            print('Password:' + _upassController.text);
          }),
    );
  }
}

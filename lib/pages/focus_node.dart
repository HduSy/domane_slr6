import 'package:flutter/material.dart';

class FocusNodeTest extends StatefulWidget {
  _FocusNodeTest createState() => new _FocusNodeTest();
}

class _FocusNodeTest extends State<FocusNodeTest> {
  FocusNode _focusNode1 = new FocusNode();
  FocusNode _focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FocusMove',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal[800]
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: _focusNode1,
              decoration: InputDecoration(labelText: 'Text1'),
            ),
            TextField(
              focusNode: _focusNode2,
              decoration: InputDecoration(labelText: 'Text2'),
            ),
            Builder(
              builder: (ctx) {
                return Column(
                  children: <Widget>[
                    RaisedButton(
                        child: Text('移动焦点'),
                        onPressed: () {
//                          第一种写法
//                        FocusScope.of(context)获取widget树中默认的FocusScopeNode
                          FocusScope.of(context).requestFocus(_focusNode2);
//                          第二种写法
//                          if (focusScopeNode == null) {
//                            focusScopeNode = FocusScope.of(context);
//                          }
//                          focusScopeNode.requestFocus(_focusNode1);
                        }),
                    RaisedButton(
                      child: Text('隐藏键盘'),
                      onPressed: () {
                        _focusNode1.unfocus();
                        _focusNode2.unfocus();
                      },
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          tooltip: '添加监听输入框焦点事件',
          backgroundColor: Colors.teal[800],
          onPressed: () {
            print('添加输入框监听焦点事件,添加多次会有bug');
            _focusNode1.addListener((){
              print('Text1焦点状态');
              print(_focusNode1.hasFocus);
            });
            _focusNode2.addListener((){
              print('Text2焦点状态');
              print(_focusNode2.hasFocus);
            });
          }),
    );
  }
}

import 'package:flutter/material.dart';

class ParentWidgetB extends StatefulWidget {
  _ParentWidget createState() => _ParentWidget();
}

class _ParentWidget extends State<ParentWidgetB> {
//  父widget管理子widget的state
  bool _active = false;

  void _handleActiveChanged(newVal) {
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: TabBoxB(active: _active, onChanged: _handleActiveChanged),
    );
  }
}

class TabBoxB extends StatelessWidget {
  final bool active;

//  回调函数
  final ValueChanged<bool> onChanged;

  TabBoxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: new Text(
            active ? 'Active' : 'InActive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.orange[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

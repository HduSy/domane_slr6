import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  _ParentWidget createState() => _ParentWidget();
}

class _ParentWidget extends State<ParentWidget> {
  bool _active;

  void _handleActiveChanged(newVal) {
    _active = newVal;
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
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

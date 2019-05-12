import 'package:flutter/material.dart';

class ParentWidgetC extends StatefulWidget {
  _ParentWidgetC createState() => _ParentWidgetC();
}

class _ParentWidgetC extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapBoxChange(newVal) {
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: TapBoxC(
      onChanged: _handleTapBoxChange,
      active: _active,
    ));
  }
}

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

//父widget管理子widget的state
  TapBoxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  _TapBoxC createState() => _TapBoxC();
}

class _TapBoxC extends State<TapBoxC> {
// Widget管理自身状态state
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        child: Center(
          child: Text(widget.active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: widget.active ? Colors.pink[400] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                  color: Colors.teal[700],
                  width: 5.0,
                )
              : null,
        ),
      ),
    );
  }
}

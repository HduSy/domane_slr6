import 'package:flutter/material.dart';
// Widget管理自身状态

class FourRoute extends StatefulWidget {
  FourRoute({Key key}) : super(key: key);

  @override
  _FourRoute createState() => _FourRoute();
}

class _FourRoute extends State<FourRoute> {
  bool _active = false;

  void _handleTapBoxChanged() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: _handleTapBoxChanged,
      child: Container(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            _active ? 'Active' : 'deActive',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: _active ? Colors.green[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

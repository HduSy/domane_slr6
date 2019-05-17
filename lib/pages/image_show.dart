import 'package:flutter/material.dart';

class ImageShow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image_show',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        child: Image.network(
          'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
          fit: BoxFit.scaleDown,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
          repeat: ImageRepeat.repeatY,
        ),
        width: 300,
        height: 600,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[600],
            style: BorderStyle.solid,
            width: 2.0
          )
        ),
      )
    );
  }

}
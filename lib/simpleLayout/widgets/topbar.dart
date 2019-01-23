import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        color: Colors.amber,
        margin:const EdgeInsets.all(23.0),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.access_time),tooltip: "这里", onPressed: null)
          ],
        ),
      ),
    );
  }

}
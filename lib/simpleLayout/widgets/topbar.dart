import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        color: Colors.amber,
        margin:const EdgeInsets.all(0.0),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.time_to_leave),tooltip: "这里", onPressed: null),
            Expanded(
              child:Center(child: Text("这里是标题"),),
            ),
            IconButton(icon: Icon(Icons.insert_chart),tooltip: "这里", onPressed: null),
          ],
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget{
  final Text title;

   TopBarWidget({ this.title});


  @override
  Widget build(BuildContext context) {
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
              child:Center(child: this.title),
            ),
            IconButton(icon: Icon(Icons.insert_chart),tooltip: "这里", onPressed: null),
          ],
        ),
      ),
    );
  }

}
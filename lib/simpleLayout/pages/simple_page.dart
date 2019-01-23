import 'package:flutter/material.dart';
import 'package:flutter_awesome/simpleLayout/widgets/topbar.dart';

class SimplePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
    child: Column(
      children: <Widget>[
        new TopBarWidget(),
        new Expanded(
          child: new Center(
            child: new Text("here"),
        ),)

      ],
    ),


    );
  }
}
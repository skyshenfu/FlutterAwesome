import 'package:flutter/material.dart';
import 'package:flutter_awesome/simpleLayout/widgets/topbar.dart';

class SimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          new SafeArea(
            child: TopBarWidget(),
            bottom: false,
          ),
          new Expanded(
            child: new Container(
                color: Colors.green,
                width: double.infinity,
                height: double.infinity,
                child: Center(child: Text("123"),),
            ),
          )
        ],
      ),
    );
  }
}

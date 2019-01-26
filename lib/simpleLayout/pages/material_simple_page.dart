
import 'package:flutter/material.dart';

class SimpleMaterialPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimpleMaterialPage();
  }

}
class _SimpleMaterialPage extends State<SimpleMaterialPage>{
  bool checkButton=false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new Scaffold(
      appBar: new AppBar(
        title: Text("here"),
      ),
      body: new Column(
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            'You have pushed the button this many times:',
          )


        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _press,
        backgroundColor: checkButton? Colors.green:Colors.deepOrange,
        child: Icon(Icons.time_to_leave),
      ),
    );
  }
  void _press(){
    setState(() {
      checkButton=!checkButton;
    });
  }

}
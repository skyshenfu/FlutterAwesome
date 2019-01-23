import 'package:flutter/material.dart';

class DecorationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: Container(

        decoration:BoxDecoration(
          border: new Border.all(width: 6.0,color: Colors.deepOrangeAccent),
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          image: DecorationImage(
              image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546938199497&di=16d970e90a0ef6a9415dbac9459212f6&imgtype=0&src=http%3A%2F%2Fp2.qhimgs4.com%2Ft01aaf5d64ae51b328e.jpg")
          )

        ) ,
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        transform: new Matrix4.rotationZ(0.5),
      )


    );
  }
}
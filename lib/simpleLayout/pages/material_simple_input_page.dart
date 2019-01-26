
import 'package:flutter/material.dart';

class SimpleMaterialInputPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimpleMaterialInputPage();
  }

}
class _SimpleMaterialInputPage extends State<SimpleMaterialInputPage>{
  bool checkButton=false;
  TextEditingController controller=new TextEditingController();
  @override
  void initState() {
    super.initState();
    controller.text="Hello ZTY";
    controller.selection=new TextSelection(baseOffset: 2, extentOffset: 5);

  }
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

          TextField(

          controller:  controller,
          //自动获取焦点
          autofocus: true,
          //游标颜色
          cursorColor: Colors.greenAccent,
          //输入内容的类型
          //true表示输入密码，会出遮蔽已经输入的内容
          obscureText: false,
          cursorWidth: 10.0,
          maxLength: 10,
          maxLengthEnforced: true,
          maxLines: 1,
          decoration: InputDecoration(
            hintText: "1234",
            //这里是右下角的计数器
            counterText: "",
            prefixIcon: Icon(
              Icons.print
            ),
            prefix: Text("账号"
            ,style: TextStyle(
                color: Colors.green
              ),
            ),
            border:  InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.blue
            )
            ,
          ),
//          onChanged: (v){
//            print("onChange: $v");
//          },

          )
         ,

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
    print(controller.text);
  }

}
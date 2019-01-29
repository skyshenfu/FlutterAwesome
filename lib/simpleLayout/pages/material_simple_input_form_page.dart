import 'package:flutter/material.dart';

class SimpleMaterialInputFormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimpleMaterialInputFormPage();
  }
}

class _SimpleMaterialInputFormPage extends State<SimpleMaterialInputFormPage> {
  bool checkButton = false;
  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = "Hello ZTY";
    controller.selection = new TextSelection(baseOffset: 2, extentOffset: 5);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("here"),
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You have pushed the button this many times:")
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: Container(
              color: Colors.blue,
              child: TextField(
                controller: controller,
                //自动获取焦点
                autofocus: true,
                //游标颜色
                cursorColor: Colors.greenAccent,
                //输入内容的类型
                //true表示输入密码，会出遮蔽已经输入的内容
                obscureText: false,
                cursorWidth: 5.0,
                maxLength: 10,
                maxLengthEnforced: true,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "1234",
                  //这里是右下角的计数器
                  counterText: "",
                  prefixIcon: Icon(Icons.print),
                  prefix: Text(
                    "账号",
                    style: TextStyle(color: Colors.green),
                  ),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.blue),
                ),
//          onChanged: (v){
//            print("onChange: $v");
//          },
              ),
            ),
          ),
          Text(
            'You have pushed the button this many times:',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                background: new Paint()..color=Colors.yellow,
                decoration:TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              child: Text('You have pushed the button this many times' * 4,
                  overflow: TextOverflow.ellipsis,
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 80,height: 80),
            child: Image(image: NetworkImage("http://a.hiphotos.baidu.com/image/pic/item/6a600c338744ebf832af47dad4f9d72a6159a77c.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _press,
        backgroundColor: checkButton ? Colors.green : Colors.deepOrange,
        child: Icon(Icons.time_to_leave),
      ),
    );
  }

  void _press() {
    print(controller.text);
  }
}

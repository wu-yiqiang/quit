import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/target.dart';

enum TaskEditPageEnterPage {
  TaskEditPageEnterType_New,
  TaskEditPageEnterType_Edit,
}

class TargetEditPage extends StatelessWidget {
  TargetEditPage(this.target,
      {this.enterType = TaskEditPageEnterPage.TaskEditPageEnterType_New});

  final Target? target;
  final TaskEditPageEnterPage enterType;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: ElevatedButton(
                    child: Text("取消"),
                    onPressed: () {},
                  )),
              Container(
                  child: Text(
                    "戒奶茶",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24.0,
                        height: 1.2,
                        decoration: TextDecoration.none),
                  )),
              Container(
                  child: ElevatedButton(
                    child: Text("保存"),
                    onPressed: () {},
                  ))
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Text("main-box")),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Text("main-box")),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Text("main-box")),
            ],
          ),
        ],
      ),
    );
  }
}

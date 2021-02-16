import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/screens/tasksscreen.dart';
import 'package:todolist/task.dart';
import 'package:todolist/tasklist.dart';

class AddTaskScreen extends StatelessWidget {
  String text;


  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xFF757575),
    child: Container(
      child: Container(
        padding: EdgeInsets.only(top: 30.0,left: 50.0,right: 50.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Add Task",
              textAlign: TextAlign.center,style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 40.0
            ),),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              autofocus: true,
              onChanged: (texts)
              {
                text=texts;
              },
              cursorColor: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
              color: Colors.lightBlueAccent,
              onPressed: ()
              {
                Provider.of<TaskList>(context).add(text);
                Navigator.pop(context);
              },
              child: Text("Add",
                textAlign:TextAlign.center,style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),),
    ),);
  }
}

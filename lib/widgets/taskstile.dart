import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool val;
  final String title;
  final Function callback;
  final Function delcallback;

  TaskTile({this.val, this.title, this.callback,this.delcallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: ()
      {
        delcallback();
      },
      title: Text(
        title,
        style: TextStyle(color: Colors.black,
        decoration: val?TextDecoration.lineThrough:null),
      ),
      trailing: Checkbox(
        value: val,
        onChanged: (val)
        {
          callback(val);
        },
      ),
    );
  }
}

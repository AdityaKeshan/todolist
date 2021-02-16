import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../task.dart';
import '../tasklist.dart';
import 'taskstile.dart';

class TasksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index)
    {
      return TaskTile(val:  Provider.of<TaskList>(context).tasks[index].state,title: Provider.of<TaskList>(context).tasks[index].name,
        callback: (val)  {
          Provider.of<TaskList>(context).change(Provider.of<TaskList>(context).tasks[index]);
        },
        delcallback: ()
        {
          Provider.of<TaskList>(context).remove(index);
        },
       );
    },itemCount: Provider.of<TaskList>(context).tasks.length,);
  }
}

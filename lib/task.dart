class Task
{
  String name;
  bool state=false;

  Task({this.name, this.state});
  void change()
  {
    state=!state;
  }
  void changeTask()
  {

  }
}
class Homework {
  final String title;
  final DateTime dueTime;
  bool isDone = false;

  Homework({this.title, this.dueTime});
}

List<Homework> recentHomeworks = [
  Homework(
    title: "Instantaneous Centres",
    dueTime: DateTime.parse("2020-06-08 10:30:00"),
  ),
  Homework(
    title: "Viscosity Exercises",
    dueTime: DateTime.parse("2020-06-09 14:30:00"),
  ),
];
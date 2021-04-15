class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({this.title, this.subject, this.time});
}

List<Alert> recentAssignments = [
  Alert(
    title: "Numerical Methods",
    subject: "Numerical Analysis",
    time: DateTime.parse("2020-06-06 12:30:00"),
  ),
  Alert(
    title: "Design Thinking lab",
    subject: "Project",
    time: DateTime.parse("2020-06-06 14:30:00"),
  ),
];
import 'package:flutter/cupertino.dart';

class Goal {
  String title = "A";
  String subtitle = "";
  int minDayCount = 0;
  int minWeekCount = 0;
  int minMonthCount = 0;
  int minYearCount = 0;
}

class GoalList extends ChangeNotifier {
  List<Goal> goals = [Goal(), Goal(), Goal()];
}

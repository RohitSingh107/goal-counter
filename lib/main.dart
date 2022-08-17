import 'package:flutter/material.dart';
import 'package:goal_counter/goal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoalList(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Goal Counter")),
        body: Consumer<GoalList>(
          builder: (context, goalsClass, child) {
            return ListView.builder(
              itemCount: goalsClass.goals.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(goalsClass.goals[index].title),
              ),
            );
          },
        ),
      ),
    );
  }
}

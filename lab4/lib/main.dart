import 'package:flutter/material.dart';
import 'exercise1_core_widgets.dart';
import 'exercise2_input_controls.dart';
import 'exercise3_layout_demo.dart';
import 'exercise4_theme_demo.dart';
import 'exercise5_fix_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 4 – Flutter UI Fundamentals',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lab 4 – Flutter UI Fundamentals")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildItem(context, "Exercise 1 – Core Widgets", CoreWidgetsDemo()),
          buildItem(context, "Exercise 2 – Input Controls", InputControlsDemo()),
          buildItem(context, "Exercise 3 – Layout Demo", LayoutDemo()),
          buildItem(context, "Exercise 4 – App Structure & Theme", ThemeDemo()),
          buildItem(context, "Exercise 5 – Common UI Fixes", FixDemo()),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, String title, Widget screen) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => screen),
          );
        },
      ),
    );
  }
}
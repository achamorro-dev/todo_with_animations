import 'package:flutter/material.dart';
import 'package:todo_with_animations/ui/home/home.dart';
import 'package:todo_with_animations/ui/shared/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: todoThemeData,
      home: HomePage(),
    );
  }
}

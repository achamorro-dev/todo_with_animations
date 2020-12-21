import 'package:flutter/material.dart';
import 'package:todo_with_animations/ui/home/widgets/todo_category_list.dart';
import 'package:todo_with_animations/ui/home/widgets/todo_summary.dart';
import 'package:todo_with_animations/ui/widgets/todo_app_bar.dart';
import 'package:todo_with_animations/ui/widgets/todo_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TodoBackground(),
          Positioned(top: 60, child: TodoAppBar()),
          Positioned(top: 0, child: TodoSummary()),
          Positioned(bottom: 60, child: TodoCategoryPageView()),
        ],
      ),
    );
  }
}

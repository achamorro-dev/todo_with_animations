import 'package:flutter/material.dart';

class Category {
  IconData icon;
  String title;
  int totalTasks;
  double progress;

  Category({
    this.icon,
    this.title,
    this.totalTasks,
    this.progress,
  });
}

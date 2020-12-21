import 'package:flutter/material.dart';
import 'package:todo_with_animations/core/models/category.dart';
import 'package:todo_with_animations/ui/widgets/todo_category_card.dart';

class TodoCategoryPageView extends StatelessWidget {
  const TodoCategoryPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        children: categoryList
            .map((category) => TodoCategoryCard(
                  category: category,
                ))
            .toList(),
      ),
    );
  }
}

List<Category> categoryList = [
  Category(
    icon: Icons.person,
    totalTasks: 9,
    progress: 0.83,
    title: 'Personal',
  ),
  Category(
    icon: Icons.work,
    totalTasks: 12,
    progress: 0.24,
    title: 'Trabajo',
  ),
  Category(
    icon: Icons.shopping_basket,
    totalTasks: 4,
    progress: 0.50,
    title: 'Compra',
  ),
];

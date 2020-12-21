import 'package:flutter/material.dart';
import 'package:todo_with_animations/core/models/category.dart';

class TodoCategoryCard extends StatelessWidget {
  final Category category;

  const TodoCategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(
        right: 32,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                      ),
                    ),
                    child: Icon(category.icon),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                      ),
                    ),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              '${category.totalTasks} Tareas',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.black54,
                  ),
            ),
            Text(
              category.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    minHeight: 6,
                    value: category.progress,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '${category.progress * 100}%',
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

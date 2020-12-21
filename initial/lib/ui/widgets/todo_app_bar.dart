import 'package:flutter/material.dart';

class TodoAppBar extends StatelessWidget {
  const TodoAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 32,
          ),
          Text(
            'TODO',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Icon(Icons.search, color: Colors.white, size: 32),
        ],
      ),
    );
  }
}

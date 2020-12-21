import 'package:flutter/material.dart';

class TodoSummary extends StatelessWidget {
  const TodoSummary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
              radius: 32,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Hola, Brad.',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Hace un precioso día fuera.',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              'Tienes 3 tareas para hoy',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

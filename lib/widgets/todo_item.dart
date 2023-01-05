import 'package:flutter/material.dart';

import 'package:todo_app/constants/color.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: tdGrey,
        leading: Icon(Icons.check_box, color: tdBlue),
        title: Text('Check mail'),
      ),
    );
  }
}

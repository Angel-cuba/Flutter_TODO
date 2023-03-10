import 'package:flutter/material.dart';

import 'package:todo_app/constants/color.dart';
import 'package:todo_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChange;
  final onTodoDeleted;

  const TodoItem(
      {Key? key,
      required this.todo,
      required this.onTodoChange,
      required this.onTodoDeleted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: ListTile(
          onTap: () {
            onTodoChange(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: tdGrey,
          leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: tdBlue),
          title: Text(todo.title!,
              style: TextStyle(
                  color: tdBlack,
                  fontSize: 20,
                  decoration: todo.isDone ? TextDecoration.lineThrough : null)),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              icon: Icon(Icons.delete),
              onPressed: () {
                onTodoDeleted(todo.id);
              },
            ),
          ),
        ));
  }
}

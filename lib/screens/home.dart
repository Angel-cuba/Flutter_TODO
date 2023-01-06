// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

import '../widgets/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final todosList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: tdBg,
              child: Column(children: [
                searchBox(),
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text('All Tasks',
                          style: TextStyle(
                            color: tdBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    for (Todo todoData in todosList)
                      TodoItem(
                          todo: todoData,
                          onTodoChange: _handleTodoChange,
                          onTodoDeleted: _handleTodoDeleted),
                  ],
                ))
              ]),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(
                                bottom: 20, left: 20, right: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                                color: tdWhite,
                                boxShadow: const [
                                  BoxShadow(
                                      color: tdGrey,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 10,
                                      spreadRadius: 0.0)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Add new task',
                                border: InputBorder.none,
                              ),
                            ))),
                    Container(
                      margin: EdgeInsets.only(bottom: 20, right: 20),
                      child: ElevatedButton(
                          child: Text('+', style: TextStyle(fontSize: 25)),
                          onPressed: () {
                            print('Add new task');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: tdBlue,
                            minimumSize: Size(60, 60),
                            elevation: 10,
                            shape: CircleBorder(),
                          )),
                    )
                  ],
                ))
          ],
        ));
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleTodoDeleted(String id) {
    setState(() {
      todosList.removeWhere((element) => element.id == id);
    });
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: tdBg,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30,
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/sports.jpeg'),
              ),
            )
          ],
        ));
  }
}

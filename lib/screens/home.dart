// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/constants/color.dart';
import 'package:todo_app/widgets/todo_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Container(
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
                TodoItem(),
                TodoItem(),
                TodoItem(),
                TodoItem(),
                TodoItem(),
                TodoItem(),
              ],
            ))
          ]),
        ));
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 25,
          maxHeight: 20,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: tdGrey,
          fontSize: 16,
        ),
      )),
    );
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

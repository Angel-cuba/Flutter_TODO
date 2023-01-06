import 'package:flutter/material.dart';

import '../constants/color.dart';

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
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

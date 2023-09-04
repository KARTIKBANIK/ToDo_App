import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
        border: InputBorder.none,
        hintText: "Search",
        hintStyle: TextStyle(
          color: tdGrey,
        ),
      ),
    ),
  );
}

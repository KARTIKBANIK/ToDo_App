import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo_model.dart';
import '../widgets/search_box.dart';
import '../widgets/todo_items.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      "All To-Dos",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (ToDo todo in todoList) ToDoItems(todo: todo)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/1.png"),
            ),
          )
        ],
      ),
    );
  }
}

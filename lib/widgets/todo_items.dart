import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todo_model.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;
  ToDoItems({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Click on ToDo Items");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: tdBlue),
        title: Text(
          "Check Mail",
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              print("Delete ToDo Items");
            },
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}

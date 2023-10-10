import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/models/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.todoModel,
      required this.onTodoChanged,
      required this.delete});
  final TodoModel todoModel;
  final Function onTodoChanged;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodoChanged(todoModel);
        },
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: todoModel.isDone
            ? const Icon(
                Icons.check_box,
                color: tdBlue,
              )
            : const Icon(
                Icons.check_box_outline_blank,
                color: tdBlue,
              ),
        title: Text(
          todoModel.todoText,
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: todoModel.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            delete(todoModel.id);
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}

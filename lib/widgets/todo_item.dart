import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          "was there data here",
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: GestureDetector(
          onTap: () {
            print('delete');
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

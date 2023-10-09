import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/widgets/customAppBar.dart';
import 'package:modern_todo/widgets/custom_search_bar.dart';
import 'package:modern_todo/widgets/todo_item.dart';

import '../models/todo.dart';

class Home extends StatelessWidget {
   Home({super.key});
  final todoList = TodoModel.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(
          Icons.add
        ),
        onPressed: () {
          
        },
        
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSearchBar(),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "All ToDos",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),

              
              // Expanded(
              //   child: ListView.builder(
                 
              //       itemCount: todoList.length,
              //       itemBuilder: (context, index) =>  TodoItem(todoModel: todoList,)),
              // ),
              for (TodoModel todo in todoList)
                TodoItem(todoModel: todo)
            ],
          ),
        ),
      ),
    );
  }
}

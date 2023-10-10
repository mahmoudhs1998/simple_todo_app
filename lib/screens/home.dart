import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/widgets/customAppBar.dart';
import 'package:modern_todo/widgets/todo_item.dart';

import '../models/todo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = TodoModel.todoList();
  List<TodoModel> _foundTodo = [];
  final todoController = TextEditingController();
  @override
  void initState() {
    
    _foundTodo = todoList;
    todoList.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(Icons.add),
        onPressed: () {
          addTodo(context);
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //CustomSearchBar(),
              search(),
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
              for (TodoModel todo in _foundTodo)
                TodoItem(
                  todoModel: todo,
                  onTodoChanged: _handleTodoChanged,
                  delete: _deleteItem,
                )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> addTodo(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: todoController,
                // maxLines: 6,
                onSubmitted: (value) {
                  _addTodoItem(value);
                  Navigator.of(context).pop();
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8, top: 4),
                  border: InputBorder.none,
                  hintText: 'todo',
                  hintStyle: TextStyle(color: tdGrey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addTodoItem(String todo) {
    setState(() {
      todoList.add(TodoModel(
          todoText: todo,
          id: DateTime.now().millisecondsSinceEpoch.toString()));
    });
    todoController.clear();
  }

  void _handleTodoChanged(TodoModel todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void searchFilter(String query) {
    List<TodoModel> results = [];
    if (query.isEmpty) {
      results = todoList;
    } else {
      // when something entered in search field:
      results = todoList
          .where((item) =>
              item.todoText.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundTodo = results;
    });
  }

  Widget search() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => searchFilter(value),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            size: 25,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }
}

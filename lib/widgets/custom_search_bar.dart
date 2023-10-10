// import 'package:flutter/material.dart';
// import 'package:modern_todo/constants/colors.dart';
// import 'package:modern_todo/models/todo.dart';

// class CustomSearchBar extends StatefulWidget {
//   const CustomSearchBar({
//     super.key,
//   });

//   @override
//   State<CustomSearchBar> createState() => _CustomSearchBarState();
// }

// class _CustomSearchBarState extends State<CustomSearchBar> {
//   final todoList = TodoModel.todoList();

//   List<TodoModel> _foundTodo = [];

//   @override
//   void initState() {
//     // TODO: implement initState

//     _foundTodo = todoList;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child:  TextField(
//         onChanged: (value) => searchFilter(value),
//         decoration: const InputDecoration(
//           contentPadding: EdgeInsets.all(0),
//           prefixIcon: Icon(
//             Icons.search,
//             size: 25,
//           ),
//           prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 25),
//           border: InputBorder.none,
//           hintText: 'Search',
//           hintStyle: TextStyle(color: tdGrey),
//         ),
//       ),
//     );
//   }

//   void searchFilter(String query) {
//     List<TodoModel> results = [];
//     if (query.isEmpty) {
//       results = todoList;
//     } else {
//       // when something entered in search field:
//       results = todoList
//           .where((item) =>
//               item.todoText.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       _foundTodo = results;
//     });
//   }
// }

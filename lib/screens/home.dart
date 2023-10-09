import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/widgets/customAppBar.dart';
import 'package:modern_todo/widgets/custom_search_bar.dart';
import 'package:modern_todo/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
        child:  Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children: [
            const CustomSearchBar(),
            const SizedBox(height: 40,),
            const Text(
              "All ToDos",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
            ),
             const SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder:(context, index) =>const  TodoItem()
                ),
            ),
          ],
        ),
      ) ,
      
    );
  }

  
}


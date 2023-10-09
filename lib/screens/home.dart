import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/widgets/customAppBar.dart';
import 'package:modern_todo/widgets/custom_search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body:Container(
        padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
        child: Column(
          children: [
            const CustomSearchBar(),
          ],
        ),
      ) ,
      
    );
  }

  
}


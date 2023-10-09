import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';
import 'package:modern_todo/widgets/customAppBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      
    );
  }

  
}


import 'package:flutter/material.dart';
import 'package:modern_todo/constants/colors.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      centerTitle: true,
      title:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const Icon(Icons.checklist_outlined , size: 30,),
          SizedBox(
            height: 40,width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:const Icon(Icons.check_circle_outline), 
              ),
          ),

        ],
      ),

    );
  }
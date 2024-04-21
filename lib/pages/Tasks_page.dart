import 'package:hebitega/design/colors.dart';
import 'package:flutter/material.dart';
import 'package:hebitega/pages/tasks_list.dart';

import '../design/dimensions.dart';


class Taskspage extends StatelessWidget{
  const Taskspage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(
          color: plusmenuColor,
          fontSize: fontSize16,
          fontWeight: FontWeight.w500,

    )),
        backgroundColor: mainColor,
      ),
      body:
      Container(color: backgroundColor, child: const taskslist()),


    );
  }
}
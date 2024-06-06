import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  bool habitsButton = true;
  bool goalsButton = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Row(children: [
        // ToggleButtons(
        //     children: [
        //       Container(
        //         width: 90,
        //           child:
        //               Text("Привычки", style: TextStyle(color: Colors.white))),
        //       Container(
        //         width: 160,
        //           child: Text("Ежедевные задачи",
        //               style: TextStyle(color: Colors.white)))
        //     ],
        //     borderRadius: BorderRadius.circular(15),
        //     selectedColor: Color(0xFF645A70),
        //     isSelected: _selections,
        //     onPressed: (int index) => {
        //           setState(() {
        //             for (int i = 0; i < 2; i++) {
        //               if (_selections[i]) {
        //                 _selections[i] = !_selections[i];
        //               }
        //             }
        //             _selections[index] =
        //                 !_selections[index]; //!_selections[index];
        //           })
        //         })

        TextButton(
            onPressed: () => {},
            child: Text("Привычки", style: TextStyle(color: Colors.white)),
            style: ButtonStyle()),
        TextButton(
            onPressed: () => {},
            child:
                Text("Ежедевные задачи", style: TextStyle(color: Colors.white)),
            style: ButtonStyle())
      ]),
      SizedBox(
          height: 750,
          child: ListView(
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              children: [HabitsPage(), GoalsPage()]))
    ]));
  }
}

class HabitsPage extends StatefulWidget {
  const HabitsPage({super.key});

  @override
  State<HabitsPage> createState() => _HabitsPageState();
}

class _HabitsPageState extends State<HabitsPage> {
  var isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                    width: 164,
                    child: Text("На сегодня нет активных привычек",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA)))),
                Text("На сегодня нет ни одной привычки. Создать?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFBABABA))),
                SizedBox(height: 16, width: 420),
                TextButton(
                    onPressed: () => {},
                    child: Row(children: [
                      SvgPicture.asset("assets/icons/plus1.svg"),
                      SizedBox(width: 6),
                      Text("Создать", style: TextStyle(color: Colors.white))
                    ]),
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF6750A4))))
              ])
        : Column();
  }
}

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  var isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Container(
                    width: 164,
                    child: Text("На сегодня нет активных задач",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oswald(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA)))),
                Text("На сегодня нет ни одной задачи. Создать?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFBABABA))),
                SizedBox(height: 16, width: 420),
                TextButton(
                    onPressed: () => {},
                    child: Row(children: [
                      SvgPicture.asset("assets/icons/plus1.svg"),
                      SizedBox(width: 6),
                      Text("Создать", style: TextStyle(color: Colors.white))
                    ]),
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF6750A4))))
              ])
        : Column();
  }
}

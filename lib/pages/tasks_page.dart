import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        physics: PageScrollPhysics(),
        children: [HabitsPage(), GoalsPage()]); // was HeroPage()
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
                Container(width: 164, child: Text("На сегодня нет активных привычек",
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
          Container(width: 164, child: Text("На сегодня нет активных задач",
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

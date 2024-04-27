import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hebitega/design/colors.dart';
import 'package:flutter/material.dart';
import 'package:hebitega/pages/tasks_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Taskspage extends StatelessWidget {
  const Taskspage({super.key});

  @override
  Widget build(BuildContext context) {
    Enabled() => null;
    return Scaffold(
        appBar: AppBar(
            leading: Container(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset("assets/icons/barWhite.svg",
                    width: 24, height: 24)),
            backgroundColor: AppBarColor,
            title: const Align(
                alignment: Alignment.topRight,
                child:
                    Text("Habitega", style: TextStyle(color: Colors.white)))),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFF201047),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/hero.svg"),
                  label: 'Hero'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/done2.svg"),
                  label: 'Tasks'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/society.svg"),
                  label: 'Society'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/goals.svg"),
                  label: 'Goals')
            ]),
        body: Container(
            color: backgroundColor,
            child: Column(children: [Container(color: containerColor), Container(color: containerColor)]))); //
  }
}

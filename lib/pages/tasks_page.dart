import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hebitega/design/colors.dart';
import 'package:flutter/material.dart';
import 'package:hebitega/pages/hero_page.dart';
import 'package:hebitega/pages/tasks_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Taskspage extends StatelessWidget {
  const Taskspage({super.key});

  @override
  Widget build(BuildContext context) {
    Enabled() => null;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: BottomNavigationBarColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/hero.svg"),
                  label: 'Hero'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/tasks.svg"),
                  label: 'Tasks'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/society.svg"),
                  label: 'Society'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/goals.svg"),
                  label: 'Goals')
            ]),
        body: HeroPage()); //
  }
}

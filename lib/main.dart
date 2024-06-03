import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:hebitega/pages/login_page.dart';
import 'package:hebitega/pages/register_page.dart';
import 'package:hebitega/pages/settings_page.dart';
import 'package:hebitega/pages/tasks_page.dart';
import 'package:hebitega/design/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hebitega/pages/hero_page.dart';
import 'package:hebitega/pages/community_page.dart';
import 'package:hebitega/pages/goals_page.dart';

void main() => runApp(const MyApp());


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _index = 0;
  final PageController controller = PageController(initialPage: 0);

  void onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  final pageList = const <Widget>[HeroPage(), TasksPage(), CommunityPage(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HabitEga',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        home: Scaffold(
          backgroundColor: BottomNavigationBarColor,
            bottomNavigationBar: NavigationBar(
                destinations: [
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/hero.svg"),
                      label: 'Hero'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/tasks.svg"),
                      label: 'Tasks'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/society.svg"),
                      label: 'Society'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/goals.svg"),
                      label: 'Settings')
                ],
                backgroundColor: BottomNavigationBarColor,
                selectedIndex: _index,
                indicatorColor: BottomNavigationBarSelectedItemColor,
                height: 70,
                onDestinationSelected: (index) => {
                      setState(() {
                        _index = index;
                      })

                    }),
            body: Container(
              //color: BottomNavigationBarColor,
                //children: [HeroPage(), TasksPage(), CommunityPage(), SettingsScreen()]
                //child: pageList[_index])));
                //child: RegisterPage()
                child: pageList[_index]
    )));
  }
}

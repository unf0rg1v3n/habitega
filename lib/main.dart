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
import 'package:google_fonts/google_fonts.dart';

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

  final pageNames = const <String>[
    "Персонаж",
    "Задачи",
    "Сообщество",
    "Найстройки"
  ];
  final pageList = const <Widget>[
    HeroPage(),
    TasksPage(),
    CommunityPage(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HabitEga',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
        home: Scaffold(
            appBar: AppBar(
                title: Text(pageNames[_index],
                    style: GoogleFonts.oswald(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                backgroundColor: AppBarColor),
            backgroundColor: backgroundColor,
            bottomNavigationBar: NavigationBar(
                destinations: [
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/hero.svg",
                          color: Colors.white),
                      label: 'Hero'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/tasks.svg",
                          color: Colors.white),
                      label: 'Tasks'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/society.svg",
                          color: Colors.white),
                      label: 'Society'),
                  NavigationDestination(
                      icon: SvgPicture.asset("assets/icons/goals.svg",
                          color: Colors.white),
                      label: 'Settings')
                ],
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                backgroundColor: BottomNavigationBarColor,
                selectedIndex: _index,
                indicatorColor: BottomNavigationBarSelectedItemColor,
                height: 50,
                onDestinationSelected: (index) => {
                      setState(() {
                        _index = index;
                      })
                    }),
            body: Container(
                //color: BottomNavigationBarColor,
                //children: [HeroPage(), TasksPage(), CommunityPage(), SettingsScreen()]
                //child: LoginPage())));
                //child: RegisterPage())));
                child: pageList[_index])));
  }
}

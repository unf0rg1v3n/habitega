import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hebitega/design/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hebitega/design/dimensions.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HeroPage extends StatefulWidget {
  static const name = "Персонаж";

  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

String getName() => "Username";
String getId() => "00000001"; //TODO: реализовать функцию получения id

String getLevel() => "1000"; //TODO: реализовать функцию получения уровня

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(width: 100, height: 100, child: Placeholder()),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${getName()}",
                        style: GoogleFonts.oswald(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFBABABA))),
                    Text("id${getId()}",
                        style: GoogleFonts.oswald(
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                            color: const Color(0xFFBABABA))),
                    Container(
                        width: 250,
                        alignment: Alignment.centerRight,
                        child: Text("${getLevel()}",
                            style: GoogleFonts.oswald(
                                fontSize: 20,
                                //textStyle: TextStyle(),
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFBABABA)))),
                    Container(
                        height: 12,
                        width: 250,
                        child: LinearProgressIndicator(
                          value: 0.2,
                          //TODO: Добавить функцию отслеживания прогресса
                          backgroundColor: const Color(0xFFBABABA),
                          color: const Color(0xFFCAC32A),
                          borderRadius: BorderRadius.circular(5),
                        ))
                  ],
                )
              ],
            )),
        Padding(padding: EdgeInsets.all(16), child: Showcase(h: 152)),
      ],
    );
  }
}

class Showcase extends StatefulWidget {
  const Showcase({super.key, this.h});

  final double? h;

  @override
  State<Showcase> createState() => _ShowcaseState(h);
}

class _ShowcaseState extends State<Showcase> {
  _ShowcaseState(this.h);

  bool isEmpty = true;

  final double? h;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 152,
        child: Column(children: [
          TextButton(
              onPressed: () => {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF756C7D)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))))),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Витрина достижений",
                      style: GoogleFonts.oswald(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFBABABA))))),
          Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF4D4B4F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              height: this.h,
              child: isEmpty
                  ? Center(
                      child: Container(width: 200, child: Text(
                          "На данный момент у вас нет ни одного достижения.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.oswald(
                              textStyle: TextStyle(),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFBABABA)))))
                  : Placeholder())
        ]));
  }
}

// Отвечает за выведение характеристик героя на странице hero_page
class CharacteristicsWidget extends StatefulWidget {
  const CharacteristicsWidget({super.key});

  @override
  State<CharacteristicsWidget> createState() => _CharacteristicsWidgetState();
}

class _CharacteristicsWidgetState extends State<CharacteristicsWidget> {
  var forceValue = 10;
  var durabilityValue = 10;
  var manaValue = 10;
  var dexterityValue = 10;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            color: Color(0xFF4D4B4F),
            width: 380,
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Харастеристики: ",
                            style: GoogleFonts.oswald(
                                fontSize: fontSize24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        Container(
                            width: 35,
                            height: 35,
                            child: TextButton(
                                onPressed: () => {},
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color(0xFFFFD8E4)),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))))),
                                child:
                                    SvgPicture.asset("assets/icons/plus.svg")))
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Сила",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$forceValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Выносливость",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$durabilityValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Мана",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$manaValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ловкость",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("$dexterityValue",
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black))
                        ])
                  ]))
            ])));
  }
}

class Achievement extends StatelessWidget {
  final String path;
  final String description;

  const Achievement(this.path, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xFFE8DEF8)),
        width: 82,
        height: 90,
        //color: Color(0xFFE8DEF8),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SvgPicture.asset(
            path,
            width: 50,
            height: 50,
          ),
          Container(
              alignment: Alignment.center,
              width: 65,
              height: 24,
              child: Text(description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 8.0,
                      overflow: TextOverflow.clip,
                      leadingDistribution:
                          TextLeadingDistribution.proportional)))
        ]));
  }
}

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
            width: 380,
            height: 172,
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(15))
                //border: Border.all(width: 1)
                ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF756C7D)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))))),
                      child: Center(child: Text("Достижения"))),
                  Container(
                      color: Color(0xFF4D4B4F),
                      child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Achievement(
                                    "assets/icons/achievements_icons/star.svg",
                                    "King of Seduction"),
                                Achievement(
                                    "assets/icons/achievements_icons/flag.svg",
                                    "CTF Winner"),
                                Achievement(
                                    "assets/icons/achievements_icons/school.svg",
                                    "Disappoint the Dean")
                              ])))
                ])));
  }
}
